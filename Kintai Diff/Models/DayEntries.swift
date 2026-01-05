//
//  DayEntries.swift
//  Kintai Diff
//

import Foundation

struct DayEntries: Identifiable {
    private(set) var id: UUID
    private(set) var date: Date
    private(set) var hibihou: DayEntry
    private(set) var kintai: DayEntry

    init(
        date: Date,
        hibihou: DayEntry,
        kintai: DayEntry
    ) {
        self.id = .init()
        self.date = date
        self.hibihou = hibihou
        self.kintai = kintai
    }

    var isSame: Bool {
        isSameBetween(hibihou.startedAt, and: kintai.startedAt)
            && isSameBetween(hibihou.endedAt, and: kintai.endedAt)
    }

    private func isSameBetween(
        _ firstDate: Date,
        and secondDate: Date
    ) -> Bool {
        let calendar = Calendar.current

        let firstDateHourMinute = getHourMinute(
            from: firstDate,
            with: calendar
        )
        let secondDateHourMinute = getHourMinute(
            from: secondDate,
            with: calendar
        )

        return firstDateHourMinute == secondDateHourMinute
    }

    private func getHourMinute(
        from date: Date,
        with calendar: Calendar
    ) -> DateComponents {
        calendar.dateComponents(
            [
                .hour,
                .minute,
            ],
            from: date
        )
    }
}
