//
//  ViewModel.swift
//  Kintai Diff
//

import Foundation

@MainActor
@Observable
class ViewModel {
    var entries: [DayEntries] = []

    func parseEntries() {
        do {
            var rawEntries = try getEntries()
            let partitionIndex = rawEntries.partition { $0.type == .hibihou }

            let entriesOfTypeHibihou = rawEntries[partitionIndex...].sorted { $0.date < $1.date }
            let entriesOfTypeKintai = rawEntries[..<partitionIndex].sorted { $0.date < $1.date }
            guard entriesOfTypeHibihou.count == entriesOfTypeKintai.count else {
                print("Both entries has different count. Abort process.")
                return
            }

            zip(entriesOfTypeHibihou, entriesOfTypeKintai)
                .forEach {
                    guard $0.date == $1.date else {
                        print("Both entries has different date. Abort process.")
                        return
                    }

                    entries.append(
                        .init(
                            date: $0.date,
                            hibihou: $0,
                            kintai: $1
                        )
                    )
                }
        } catch {
            print("Failed to retrieve entries and parse them.\nError: \(error)")
        }
    }

    private func getEntries() throws -> [DayEntry] {
        let nativeParser = NativeKintaiHTMLParser(html: htmlData)

        let (month, entries) = try nativeParser.parse()

        print("Successfully parsed data for month: \(month)")
        print("Total entries found: \(entries.count)\n")

        return entries
    }
}
