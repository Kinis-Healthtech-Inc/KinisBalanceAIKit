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
        .package(url: "git@github.com:HoangCuong9331/DEToolkit.git", from: "2.0.5"),
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack", from: "3.9.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.11.1")
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
                .product(name: "DEToolkit", package: "DEToolkit"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack")
            ]
        )
    ]
)
