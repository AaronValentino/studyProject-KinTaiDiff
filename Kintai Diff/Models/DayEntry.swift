//
//  DayEntry.swift
//  Kintai Diff
//

import Foundation

struct DayEntry: Identifiable {
    private(set) var id: UUID
    private(set) var date: Date
    private(set) var type: DayEntryType
    private(set) var startedAt: Date
    private(set) var endedAt: Date
    private(set) var totalWorkDurationMinutes: Int
    private(set) var details: String

    init(
        date: Date,
        type: DayEntryType,
        startedAt: Date,
        endedAt: Date,
        totalWorkDurationMinutes: Int,
        details: String
    ) {
        self.id = .init()
        self.date = date
        self.type = type
        self.startedAt = startedAt
        self.endedAt = endedAt
        self.totalWorkDurationMinutes = totalWorkDurationMinutes
        self.details = details
    }

    enum DayEntryType: String {
        case hibihou = "日々報"
        case kintai = "勤怠"
    }
}
