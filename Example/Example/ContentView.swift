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
                KinisBalanceApp(
                    KinisBalanceConfig(
                        apiKey: "lDFklwecvlakj",
                        userInfo: KinisUserInfo(
                            id: "123",
                            age: 90,
                            lastName: "Hoang",
                            firstName: "Marc",
                            language: .vietnamese
                        )
                    )
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
