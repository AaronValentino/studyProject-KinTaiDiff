//
//  DayItemRowItem.swift
//  Kintai Diff
//
//  Created by アーロンヴァレンティノ on 2025/08/04.
//

import SwiftUI

struct DayItemRowItem: View {
    let entry: DayEntry

    var body: some View {
        VStack(alignment: entry.type == .hibihou ? .trailing : .leading) {
            Text(String(entry.type.rawValue))
            let startedAt = entry.startedAt.toFormattedHourMinuteString()
            let endedAt = entry.endedAt.toFormattedHourMinuteString()
            Text(String("\(startedAt) ~ \(endedAt)"))

            let totalDuration = calculateTimeDifference(
                from: entry.startedAt,
                to: entry.endedAt
            )
            let formattedTotalDuration = getDurationString(
                hours: totalDuration.hours,
                minutes: totalDuration.minutes
            )
            Text(String("合計：\(formattedTotalDuration)"))
        }
        .frame(
            maxWidth: .infinity,
            alignment: entry.type == .hibihou ? .trailing : .leading
        )
    }
}

func calculateTimeDifference(from startDate: Date, to endDate: Date) -> (hours: Int, minutes: Int) {
    let calendar = Calendar.current
    let components = calendar.dateComponents(
        [.hour, .minute],
        from: startDate,
        to: endDate
    )

    let hours = components.hour ?? 0
    let minutes = components.minute ?? 0

    return (hours, minutes)
}

func getDurationString(hours: Int, minutes: Int) -> String {
    let hoursString: String = hours == 0 ? "" : "\(hours)時間"
    let minutesString: String = minutes == 0 ? "" : "\(minutes)分"

    return "\(hoursString)\(minutesString)"
}
