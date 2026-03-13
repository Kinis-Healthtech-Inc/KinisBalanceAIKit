// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "KinisAIKitt",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "KinisAIKitt",
            targets: ["KinisAIKitt"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack", exact: "3.9.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", exact: "5.11.1")
    ],
    targets: [
        .binaryTarget(
            name: "KinisBalanceAIKit",
            path: "KinisBalanceAIKit.xcframework",
        ),
        .target(
            name: "KinisAIKitt",
            dependencies: [
                "KinisBalanceAIKit",
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack")
            ]
        )
    ]
)
