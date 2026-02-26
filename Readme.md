//
//  Readme.md
//  KinisBalanceAIKit
//
//  Created by Macbook on 26/2/26.
//

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
                TestPage()
            }
        }
    }
}
