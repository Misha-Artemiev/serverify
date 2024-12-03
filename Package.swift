// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "serverify",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Serverify",
            targets: ["Serverify"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Serverify"),
        .testTarget(
            name: "ServerifyTests",
            dependencies: ["Serverify"]
        ),
    ]
)
