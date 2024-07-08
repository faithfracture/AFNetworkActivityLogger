// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "AFNetworkActivityLogger",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15)
    ],
    products: [
        .library(name: "AFNetworkActivityLogger", targets: ["AFNetworkActivityLogger"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/AFNetworking/AFNetworking",
            from: "4.0.1"
        )
    ],
    targets: [
        .target(name: "AFNetworkActivityLogger",
                dependencies: [
                    .product(name: "AFNetworking", package: "AFNetworking")
                ],
                path: "AFNetworkActivityLogger",
                publicHeadersPath: "."
               )
    ]
)
