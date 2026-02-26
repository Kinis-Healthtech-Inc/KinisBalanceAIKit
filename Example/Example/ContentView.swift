//
//  ContentView.swift
//  Example
//
//  Created by Macbook on 25/2/26.
//

import SwiftUI
import KinisBalanceAIKit

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Take Test") {
                TestPage()
            }
        }
    }
}

#Preview {
    ContentView()
}
