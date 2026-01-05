//
//  Date+FormatStyle.swift
//  Kintai Diff
//

import Foundation

struct DayDateFormatStyle: FormatStyle {
    func format(_ value: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EE d"
        return formatter.string(from: value)
    }
}

extension FormatStyle where Self == DayDateFormatStyle {
    static var dayDate: Self { .init() }
}

struct HourMinuteFormatStyle: FormatStyle {
    func format(_ value: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: value)
    }
}

extension FormatStyle where Self == HourMinuteFormatStyle {
    static var hourMinute: Self { .init() }
}
