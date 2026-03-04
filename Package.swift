// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Package",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(name: "Package", targets: ["Package"]),
    ],
    dependencies: [
        // JWW Standard Issue Package set.
        .package(url: "https://github.com/justin/jww-standard-lib.git", from: "1.0.0"),
        
        // SwiftLint build tool plugin for code quality
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.61.0")
    ],
    targets: [
        .target(name: "Package",
                dependencies: [
                    .product(name: "JWWCore", package: "jww-standard-lib")
                ],
                plugins: [
                    .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
                ]),
        .testTarget(name: "PackageTests",
                    dependencies: [
                        "Package",
                        .product(name: "JWWCore", package: "jww-standard-lib"),
                    ])
    ]
)
