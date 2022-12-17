// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Boutique",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "Boutique",
            targets: ["Boutique"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mergesort/Bodega.git", exact: Version(2, 0, 2)),
        .package(url: "https://github.com/pointfreeco/swift-identified-collections", from: "0.5.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Boutique",
            dependencies: [
                .byName(name: "Bodega"),
                .product(name: "IdentifiedCollections", package: "swift-identified-collections")
            ],
            exclude: [
                "../../Images",
                "../../Performance Profiler",
            ]
        ),
        .testTarget(
            name: "BoutiqueTests",
            dependencies: ["Boutique"]
        ),
    ]
)
