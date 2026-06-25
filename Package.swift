// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PhunwareFoundation",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        // Only expose these to clients
        .library(
            name: "PhunwareFoundation", 
            targets: ["PhunwareFoundationTargets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/phunware/maas-core-ios-sdk.git", branch: "release/3.13.3"),
    ],
    targets: [
        // Internal frameworks
        .binaryTarget(
            name: "PhunwareFoundation",
            path: "Frameworks/PhunwareFoundation.xcframework"
        ),
        .target(name: "PhunwareFoundationTargets",
            dependencies:[
                .target(name: "PhunwareFoundation"),
                .product(name: "PWCore", package: "maas-core-ios-sdk", condition: nil),
                .product(name: "DeviceIdentity", package: "maas-core-ios-sdk", condition: nil),
            ],
            path: "PhunwareFoundationTargets"
        )
    ]
)
