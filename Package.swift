// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibExample",
    products: [
        .library(name: "LibExample", targets: ["LibExample"]),
    ],
    targets: [
        .target(name: "LibExample"),
        .testTarget(name: "LibExampleTests", dependencies: ["LibExample"]),
    ]
)
