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
        .binaryTarget(name: "LAPACKE", url: "https://github.com/kewlbear/LAPACKE-iOS/releases/download/test/LAPACKE.xcframework.zip", checksum: "a3bee426ba6072f4285174698c6f9d8af872f1e198af963810a016e888140844"),
        .target(
            name: "Accelerate",
            linkerSettings: [.linkedFramework("Accelerate")]),
    ]
)
