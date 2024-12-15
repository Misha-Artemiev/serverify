// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "serverify",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Serverify",
            targets: ["Serverify"]),
    ],
    dependencies: [
        .package(url: "https://github.com/misha-artemiev/networkify.git", branch: "develop"),
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-nio-http2.git", from: "1.31.0"),
        .package(url: "https://github.com/apple/swift-nio-ssh.git", from: "0.9.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Serverify", dependencies: [
                .product(name: "Networkify", package: "Networkify"),
                .product(name: "NIOCore", package: "swift-nio"),
                .product(name: "NIOHTTP2", package: "swift-nio-http2"),
                .product(name: "NIOSSH", package: "swift-nio-ssh")
            ]),
        .testTarget(
            name: "ServerifyTests",
            dependencies: ["Serverify"]
        ),
    ]
)
