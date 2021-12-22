// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "PythonKit",
    platforms: [
        .linux
    ],
    products: [
        .library(
            name: "PythonKit",
            type: .dynamic
            targets: ["PythonKit"]
        )
    ],
    dependencies: [
        .package(name: "BackTrace", url: "https://github.com/swift-server/swift-backtrace, .upToNextMajor(from: "1.3.1"))
    ],
    targets: [
        .target(
            name: "PythonKit",
            path: "PythonKit"
        ),
        .testTarget(
            name: "PythonKitTests",
            dependencies: ["PythonKit"]
        ),
    ]
)
