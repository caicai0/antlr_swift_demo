// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "loadImages",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
//        .library(
//            name: "loadImages",
//            targets: ["loadImages"]),
        .execute(name: "loadImages",
        targets: ["loadImages"]),
    ],
    dependencies: [
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.12.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "loadImages",
            dependencies: []),
        .testTarget(
            name: "loadImagesTests",
            dependencies: ["loadImages"]),
    ]
)
