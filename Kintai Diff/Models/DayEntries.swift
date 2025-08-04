//
//  DayEntries.swift
//  Kintai Diff
//
//  Created by アーロンヴァレンティノ on 2025/08/04.
//

import Foundation

struct DayEntries: Identifiable {
    let id: UUID = UUID()
    let date: Date
    let hibihou: DayEntry
    let kintai: DayEntry
    
    var isSame: Bool {
        isSameBetween(hibihou.startedAt, and: kintai.startedAt) && isSameBetween(hibihou.endedAt, and: kintai.endedAt)
    }
}

private func isSameBetween(_ firstDate: Date, and secondDate: Date) -> Bool {
    let calendar = Calendar.current
    let firstDateHourMinute = calendar.dateComponents([.hour, .minute], from: firstDate)
    let secondDateHourMinute = calendar.dateComponents([.hour, .minute], from: secondDate)
    
    return firstDateHourMinute == secondDateHourMinute
}
