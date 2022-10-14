// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OMDB",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "OMDB",
            targets: ["OMDB"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "OMDB",
            dependencies: ["OMDB"],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "OMDBTests",
            dependencies: ["OMDB"],
            resources: [
                .process("Resources")
            ]
        ),
    ]
)
