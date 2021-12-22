// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "PythonKit",
    products: [
        .library(
            name: "PythonKit",
            type: .dynamic,
            targets: ["PythonKit"]
        )
    ],
    dependencies: [
        .package(name: "Backtrace", url: "https://github.com/swift-server/swift-backtrace", .upToNextMajor(from: "1.3.1"))
    ],
    targets: [
        .target(
            name: "PythonKit",
            path: "PythonKit",
            dependencies: ["Backtrace"]
        ),
        .testTarget(
            name: "PythonKitTests",
            dependencies: ["PythonKit"]
        ),
    ]
)
