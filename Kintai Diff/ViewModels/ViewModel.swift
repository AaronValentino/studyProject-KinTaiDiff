//
//  ViewModel.swift
//  Kintai Diff
//
//  Created by アーロンヴァレンティノ on 2025/08/04.
//

import Foundation

@MainActor
@Observable
class ViewModel {
    var validEntries: [DayEntries] = []
    var invalidEntries: [DayEntries] = []
    
    func parseEntries() {
        do {
            var rawEntries = try getTestDayEntry()
            let partitionIndex = rawEntries.partition { $0.type == .hibihou }
            
            let entriesOfTypeHibihou = rawEntries[partitionIndex...].sorted { $0.date < $1.date }
            let entriesOfTypeKintai = rawEntries[..<partitionIndex].sorted { $0.date < $1.date }
            guard entriesOfTypeHibihou.count == entriesOfTypeKintai.count else {
                print("Both entries has different count. Abort process.")
                return
            }
            
            zip(entriesOfTypeHibihou, entriesOfTypeKintai).forEach {
                guard $0.date == $1.date else {
                    print("Both entries has different date. Abort process.")
                    return
                }
                
                let dayEntries = DayEntries(
                    date: $0.date,
                    hibihou: $0,
                    kintai: $1
                )
                dayEntries.isSame ? validEntries.append(dayEntries) : invalidEntries.append(dayEntries)
            }
        } catch {
            print("Failed to get test data and parse it.\nError: \(error)")
        }
    }

    private func getTestDayEntry() throws -> [DayEntry] {
        let nativeParser = NativeKintaiHTMLParser(html: htmlData)

        let (month, entries) = try nativeParser.parse()

        print("Successfully parsed data for month: \(month)")
        print("Total entries found: \(entries.count)\n")

        return entries
    }
}
