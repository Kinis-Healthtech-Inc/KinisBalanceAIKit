// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "KinisBalanceAIKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "KinisBalanceAIKit",
            targets: ["KinisBalanceAIKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "KinisBalanceAIKit",
            path: "KinisBalanceAIKit.xcframework"
        )
    ]
)
