# Kinis Balance iOS SDK

The **Kinis Balance iOS SDK** allows iOS applications to integrate **AI-powered balance assessment and personalized exercise recommendations** directly into their apps.

---

## Features

- 🧠 **AI Balance Analysis**
- 🏃 **Personalized Exercise Recommendations**
- 🎨 **Customizable UI Theme**
- 📱 **SwiftUI Support**
- 🧩 **UIKit Integration**
- ⚡ **Lightweight Integration**

---

## Requirements

- iOS **16.6+**
- **Swift 6.0+**
- **Xcode 26+**

---

## Installation

The SDK can be installed using **Swift Package Manager** or by embedding the **XCFramework** directly into your project.

### Swift Package Manager (Recommended)

In Xcode, go to **File → Add Packages** and enter the repository URL:

```
https://github.com/Kinis-Healthtech-Inc/KinisBalanceAIKit.git
```

Select the latest version and add the package to your app target.

### XCFramework

1. Download the latest release from the repository.
2. Drag **KinisBalanceAIKit.xcframework** into your Xcode project.
3. Ensure **Embed & Sign** is enabled under:
   **Target → General → Frameworks, Libraries, and Embedded Content**

---

## Quick Start

### 1. Create User Information

```swift
let user = KinisUserInfo(
    id: "user-123",
    yob: 1995,
    name: "John",
    gender: .male,
    language: .en
)
```

| Parameter  | Description |
|------------|-------------|
| `id`       | Must be unique for each user in your system |
| `yob`      | Year of birth — used by AI analysis |
| `gender`   | Used by AI analysis |
| `name`     | Appears as a greeting message |
| `language` | Controls SDK localization |

### 2. Create SDK Configuration

```swift
let config = KinisBalanceConfig(
    apiKey: "YOUR_API_KEY",
    style: StyleConfig(
        color: ColorConfig(),
        cardStyle: AnyShapeStyle(.stroke)
    ),
    userInfo: user
)
```

> An API key is required. Please contact [community@kinis.com](mailto:community@kinis.com) to obtain one.

---

## Usage

### SwiftUI

Embed the SDK inside a `NavigationStack`:

```swift
NavigationStack {
    KinisBalanceView(config)
}
```

`KinisBalanceView` is the entry point for SwiftUI applications.

### UIKit

Push the SDK view controller into your navigation stack:

```swift
let vc = KinisBalanceViewController(config: config)
navigationController?.pushViewController(vc, animated: true)
```

`KinisBalanceViewController` is the entry point for UIKit applications.

---

## UI Customization

The SDK UI can be customized using `StyleConfig`.

```swift
let style = StyleConfig(
    color: ColorConfig(
        branding: .blue
    ),
    cardStyle: AnyShapeStyle(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
)
```

### Color Configuration

`ColorConfig` lets you customize the SDK's colors to match your app's branding, including:

- Screen backgrounds
- Headers
- Text colors
- Icons
- Branding highlights

### Card Style

`cardStyle` customizes the border style of card components used throughout the SDK.

---

## Example Projects

The repository includes example apps demonstrating integration:

| Project | Description |
|---------|-------------|
| `Example-SwiftUI` | Integration using SwiftUI |
| `Example-UIKit` | Integration using UIKit |

---

## User Privacy

The SDK only requires minimal user information:

- User ID
- Year of birth
- Gender
- Display name
- Language

This information is used solely for personalizing the experience, AI analysis, and localization.

---

## Support

If you encounter any issues or have questions, please open an issue in the repository or contact:

📧 [community@kinis.com](mailto:community@kinis.com)

---

## License

Copyright © Kinis AI. All rights reserved.
