//
//  NativeKintaiHTMLParser.swift
//  Kintai Diff
//
//  Created by アーロンヴァレンティノ on 2025/08/04.
//

import Foundation

class NativeKintaiHTMLParser {

    private let html: String
    private let calendar = Calendar.current
    
    // Date formatters to handle various string formats found in the HTML.
    private let fullDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    private let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter
    }()

    init(html: String) {
        self.html = html
    }

    /// Parses the HTML to extract the month and a list of all day entries.
    /// - Returns: A tuple containing the month string (e.g., "2025-07") and an array of `DayEntry` objects.
    func parse() throws -> (month: String, entries: [DayEntry]) {
        // 1. Extract the month from the input field's value.
        let month = try parseMonth(from: html)
        
        // 2. Isolate the main table body content.
        let tableBodyContent = try firstMatch(for: #"<tbody.*?>(.*?)</tbody>"#, in: html)
        
        // 3. Split the content into rows.
        let rowContents = matches(for: #"<tr.*?>(.*?)</tr>"#, in: tableBodyContent)
        
        var allEntries: [DayEntry] = []

        for rowContent in rowContents {
            // Each row contains a date and two columns of data.
            guard let dateString = try? firstMatch(for: #"<th scope="row">(.*?)</th>"#, in: rowContent) else { continue }
            guard let dayDate = fullDateFormatter.date(from: dateString) else { continue }
            
            let columnContents = matches(for: #"<td.*?>(.*?)</td>"#, in: rowContent)
            guard columnContents.count == 2 else { continue }

            // Parse the "hibihou" (first) and "kintai" (second) columns.
            if let hibihouEntry = try parseColumn(columnContents[0], for: dayDate, type: .hibihou) {
                allEntries.append(hibihouEntry)
            }
            if let kintaiEntry = try parseColumn(columnContents[1], for: dayDate, type: .kintai) {
                allEntries.append(kintaiEntry)
            }
        }
        
        return (month, allEntries)
    }

    /// Parses a single `<td>` column's HTML string to create a `DayEntry`.
    private func parseColumn(_ columnHTML: String, for dayDate: Date, type: DayEntry.DayEntryType) throws -> DayEntry? {
        // Extract time range (e.g., "<p>09:51～15:15</p>")
        guard let timeRangeText = try? firstMatch(for: #"<p>(.*?)</p>"#, in: columnHTML) else { return nil }
        let (startTime, endTime) = try parseTimeRange(from: timeRangeText, on: dayDate)

        // Extract total duration (e.g., "<p><b>合計: 5h24m</b></p>")
        guard let totalDurationText = try? firstMatch(for: #"<b>(.*?)</b>"#, in: columnHTML) else { return nil }
        let totalDuration = try parseTotalDuration(from: totalDurationText)
        
        // Extract details
        let details = try parseDetails(from: columnHTML, type: type)

        return DayEntry(
            date: dayDate,
            type: type,
            startedAt: startTime,
            endedAt: endTime,
            totalDurationInMinutes: totalDuration,
            details: details
        )
    }
    
    // MARK: - Helper Parsing Functions

    private func parseMonth(from html: String) throws -> String {
        let monthPattern = #"value='[^']*\?start=([0-9]{4}-[0-9]{2})"#
        let monthString = try firstMatch(for: monthPattern, in: html)
        return monthString
    }

    private func parseTimeRange(from text: String, on date: Date) throws -> (start: Date, end: Date) {
        let components = text.replacingOccurrences(of: " ", with: "").split(whereSeparator: { $0 == "～" || $0 == "~" })
        guard components.count == 2,
              let startTimeString = components.first,
              let endTimeString = components.last else {
            throw ParserError.invalidTimeRange(text)
        }
        
        guard let startDate = combine(date: date, timeString: String(startTimeString)),
              let endDate = combine(date: date, timeString: String(endTimeString)) else {
            throw ParserError.invalidTimeFormat
        }
        
        return (startDate, endDate)
    }

    private func parseTotalDuration(from text: String) throws -> Int {
        let cleanedText = text.replacingOccurrences(of: "合計", with: "")
                              .replacingOccurrences(of: ":", with: "")
                              .replacingOccurrences(of: "+", with: "")
                              .trimmingCharacters(in: .whitespacesAndNewlines)
        
        var totalMinutes = 0
        if let hourRange = cleanedText.range(of: "h") {
            let hours = Int(cleanedText[..<hourRange.lowerBound]) ?? 0
            totalMinutes += hours * 60
            
            if let minuteRange = cleanedText.range(of: "m") {
                let minutesText = cleanedText[hourRange.upperBound..<minuteRange.lowerBound]
                let minutes = Int(minutesText) ?? 0
                totalMinutes += minutes
            }
        }
        return totalMinutes
    }

    private func parseDetails(from columnHTML: String, type: DayEntry.DayEntryType) throws -> String {
        switch type {
        case .hibihou:
            guard let ulContent = try? firstMatch(for: #"<ul.*?>(.*?)</ul>"#, in: columnHTML) else { return "" }
            let listItemsHTML = matches(for: #"<li.*?>(.*?)</li>"#, in: ulContent)
            return listItemsHTML.map { stripHTML(from: $0) }.joined(separator: "\n")
        case .kintai:
            let paragraphs = matches(for: #"<p>(.*?)</p>"#, in: columnHTML)
            return paragraphs.first(where: { $0.contains("休憩") }) ?? ""
        }
    }
    
    // MARK: - Regex and String Utilities
    
    private func firstMatch(for regex: String, in text: String) throws -> String {
        let range = NSRange(text.startIndex..., in: text)
        let regex = try NSRegularExpression(pattern: regex, options: .dotMatchesLineSeparators)
        
        guard let match = regex.firstMatch(in: text, options: [], range: range),
              let groupRange = Range(match.range(at: 1), in: text) else {
            throw ParserError.regexNoMatch(pattern: regex.pattern)
        }
        return String(text[groupRange])
    }

    private func matches(for regex: String, in text: String) -> [String] {
        do {
            let range = NSRange(text.startIndex..., in: text)
            let regex = try NSRegularExpression(pattern: regex, options: .dotMatchesLineSeparators)
            let results = regex.matches(in: text, options: [], range: range)
            return results.compactMap {
                Range($0.range(at: 1), in: text).map { String(text[$0]) }
            }
        } catch {
            return []
        }
    }
    
    private func stripHTML(from text: String) -> String {
        return text.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
                   .trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Combines a date-only `Date` object with a time string "HH:mm" to create a full `Date`.
    private func combine(date: Date, timeString: String) -> Date? {
        guard let time = timeFormatter.date(from: timeString) else { return nil }
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
        let timeComponents = calendar.dateComponents([.hour, .minute], from: time)
        
        var combinedComponents = DateComponents()
        combinedComponents.year = dateComponents.year
        combinedComponents.month = dateComponents.month
        combinedComponents.day = dateComponents.day
        combinedComponents.hour = timeComponents.hour
        combinedComponents.minute = timeComponents.minute
        
        return calendar.date(from: combinedComponents)
    }
    
    enum ParserError: Error, LocalizedError {
        case regexNoMatch(pattern: String)
        case monthNotFound
        case invalidTimeRange(String)
        case invalidTimeFormat
        
        var errorDescription: String? {
            switch self {
            case .regexNoMatch(let pattern): return "Could not find a match for pattern: \(pattern)"
            case .monthNotFound: return "Could not find the month from the input field."
            case .invalidTimeRange(let text): return "Could not parse time range from text: \(text)"
            case .invalidTimeFormat: return "Could not convert time string to Date."
            }
        }
    }
}

