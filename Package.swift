// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Spot",
    platforms: [
        .macOS(.v10_15)
    ], 
    products: [
        .library(name: "SpotKit", targets: ["Spot"]),
        .executable(name: "spot-cli", targets: ["SpotCLI"])
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Files", from: "4.1.1"),
        .package(url: "https://github.com/JohnSundell/ShellOut", from: "2.3.0")
    ],
    targets: [
        .target(name: "Spot", dependencies: ["Files", "ShellOut"]),
        .target(name: "SpotCLI", dependencies: ["SpotCLICore"]),
        .target(name: "SpotCLICore", dependencies: ["Spot"]),
        .testTarget(name: "SpotTests", dependencies: ["Spot", "SpotCLICore"])
    ]
)
