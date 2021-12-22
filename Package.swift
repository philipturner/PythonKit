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
