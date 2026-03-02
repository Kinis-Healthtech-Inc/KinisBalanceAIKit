# KinisBalanceAIKit

Official Swift SDK to integrate Kinis Balance AI into your app.

## Installation

Swift Package Manager:
https://github.com/Kinis-Healthtech-Inc/KinisBalanceAIKit.git
...

## Quick Start

```swift

import SwiftUI
import KinisBalanceAIKit

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Take Test") {
                KinisBalanceApp(
                    KinisBalanceConfig(
                        apiKey: "Cuong",
                        userInfo: KinisUserInfo(
                            age: 90,
                            lastName: "Marc",
                            firstName: "Hoang",
                            language: .vietnamese
                        )
                    )
                )
            }
        }
    }
}
```

This SDK needs camera, so please add `Privacy - Camera Usage Description` in your app's Info.plist
