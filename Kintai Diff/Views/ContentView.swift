//
//  ContentView.swift
//  Kintai Diff
//
//  Created by アーロンヴァレンティノ on 2025/08/04.
//

import NaturalLanguage
import SwiftData
import SwiftUI

struct ContentView: View {
    @State private var viewModel: ViewModel = .init()

    var body: some View {
        NavigationSplitView {
            List {
                Section(header: Text(String("問題あり")).textCase(.none)) {
                    DayItem(entries: viewModel.invalidEntries, isError: true)
                }
                Section(header: Text(String("問題なし")).textCase(.none)) {
                    DayItem(entries: viewModel.validEntries, isError: false)
                }
            }
        } detail: {
            Text("Select an item")
        }
        .task {
            viewModel.parseEntries()
        }
    }
}

#Preview {
    ContentView()
}

extension Date {
    func toFormattedDayString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EE d"
        return formatter.string(from: self)
    }
    func toFormattedHourMinuteString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: self)
    }
}
