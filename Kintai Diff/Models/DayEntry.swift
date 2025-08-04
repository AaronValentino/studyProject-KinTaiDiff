//
//  DayEntry.swift
//  Kintai Diff
//
//  Created by アーロンヴァレンティノ on 2025/08/04.
//

import Foundation

struct DayEntry: Identifiable {
    let id: UUID = UUID()
    let date: Date
    let type: DayEntryType
    let startedAt: Date
    let endedAt: Date
    let totalDurationInMinutes: Int
    let details: String

    enum DayEntryType: String {
        case hibihou = "日々報"
        case kintai = "勤怠"
    }
}
