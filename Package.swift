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
            targets: ["LAPACKE", "_LapackeLink"]),
    ],
    targets: [
        .binaryTarget(name: "LAPACKE", url: "https://github.com/kewlbear/LAPACKE-iOS/releases/download/0.0.1-20210331/LAPACKE.xcframework.zip", checksum: "cd2f078c8213a5925a1c74b2f63212fe7a900bc87b08a4e4ccd1069520ac6959"),
        .target(
            name: "_LapackeLink",
            linkerSettings: [.linkedFramework("Accelerate")]),
    ]
)
