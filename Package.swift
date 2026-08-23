// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorPluginAppTrackingTransparency",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppTrackingTransparencyPlugin",
            targets: ["AppTrackingTransparencyPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor6-spm-test.git", branch: "main")
    ],
    targets: [
        .target(
            name: "AppTrackingTransparencyPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor6-spm-test"),
                .product(name: "Cordova", package: "capacitor6-spm-test")
            ],
            path: "ios/Sources/AppTrackingTransparencyPlugin"),
        .testTarget(
            name: "AppTrackingTransparencyPluginTests",
            dependencies: ["AppTrackingTransparencyPlugin"],
            path: "ios/Tests/AppTrackingTransparencyPluginTests")
    ]
)