// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "PythonKit",
    products: [
        .library(
            name: "PythonKit",
            type: .static,
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
