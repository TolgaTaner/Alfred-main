

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Alfred",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(
            name: "Alfred",
            targets: ["Alfred"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "1.2.0"
        ),
    ],
    targets: [
        .executableTarget(
            name: "Alfred",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        )
    ]
)
