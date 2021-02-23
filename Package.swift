// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LAPACKE-iOS",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "LAPACKE-iOS",
            targets: ["LAPACKE", "Accelerate"]),
    ],
    targets: [
        .binaryTarget(name: "LAPACKE", path: "LAPACKE.xcframework.zip"),
        .target(
            name: "Accelerate",
            linkerSettings: [.linkedFramework("Accelerate")]),
    ]
)
