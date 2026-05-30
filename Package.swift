// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SQLCipher",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .macCatalyst(.v13),
        .watchOS(.v4),
        .tvOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SQLCipher",
            targets: ["SQLCipher"]),
    ],
    targets: [
        .binaryTarget(
            name: "SQLCipher",
            url: "https://github.com/Androp0v/SQLCipher.swift/releases/download/4.0.11-raul/SQLCipher.xcframework.zip",
            checksum: "2edb0ab323da0ece62fbb7ff098831771fe91ecd52faf98c8617f4152eefd5be"
        ),
        .testTarget(
            name: "SQLCipherTests",
            dependencies: ["SQLCipher"],
            cSettings: [
                .define("SQLITE_HAS_CODEC", to: nil)
            ]
        )
    ]
)
