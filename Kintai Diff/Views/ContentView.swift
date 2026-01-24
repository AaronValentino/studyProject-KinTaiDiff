//
//  ContentView.swift
//  Kintai Diff
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel: ViewModel = .init()

    var body: some View {
        List {
            ForEach(viewModel.entries) { entry in
                DayItem(entry: entry)
            }
        }
        .task {
            viewModel.parseEntries()
        }
    }
}

#Preview {
    ContentView()
}
