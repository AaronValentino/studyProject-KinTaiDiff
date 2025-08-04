//
//  DayItem.swift
//  Kintai Diff
//
//  Created by アーロンヴァレンティノ on 2025/08/04.
//

import SwiftUI

struct DayItem: View {
    let entries: [DayEntries]
    let isError: Bool
    
    var body: some View {
        ForEach(entries) { entry in
            VStack {
                HStack {
                    Text("\(entry.date.toFormattedDayString())")
                        .font(.body)
                        .fontWeight(.bold)
                    Spacer()
                    if isError {
                        let difference = calculateDifferenceInMinutes(
                            with: calculateTimeDifference(
                                from: entry.hibihou.startedAt,
                                to: entry.hibihou.endedAt
                            ),
                            and: calculateTimeDifference(
                                from: entry.kintai.startedAt,
                                to: entry.kintai.endedAt
                            )
                        )
                        let differenceInHoursAndMinutes = minutesToHoursAndMinutes(difference)
                        let formattedDifference = getDurationString(
                            hours: differenceInHoursAndMinutes.hours,
                            minutes: differenceInHoursAndMinutes.minutes
                        )
                        Text("差：\(formattedDifference)")
                    }
                }
                HStack {
                    DayItemRowItem(entry: entry.hibihou)

                    Rectangle()
                        .fill(entry.isSame ? Color.accentColor : .red)
                        .frame(width: 1)

                    DayItemRowItem(entry: entry.kintai)
                }
            }
            .foregroundStyle(isError ? .red : .primary)
            .padding(.horizontal, 4)
            .padding(.vertical)
        }
    }
}

private func calculateDifferenceInMinutes(with firstDuration: (hours: Int, minutes: Int), and secondDuration: (hours: Int, minutes: Int)) -> Int {
    return abs((firstDuration.hours * 60 + firstDuration.minutes) - (secondDuration.hours * 60 + secondDuration.minutes))
}

private func minutesToHoursAndMinutes(_ minutes: Int) -> (hours: Int, minutes: Int) {
    return (hours: minutes / 60, minutes: minutes % 60)
}
