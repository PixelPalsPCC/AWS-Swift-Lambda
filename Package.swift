// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LambdaExample",
    platforms: [.macOS(.v12)],
    dependencies: [
        .package(
            url: "https://github.com/swift-server/swift-aws-lambda-runtime.git",
            from: "1.0.0-alpha"),
        .package(url: "https://github.com/awslabs/aws-sdk-swift.git",
            from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "LambdaExample",
            dependencies: [
                .product(name: "AWSS3", package: "aws-sdk-swift"),
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
                // .product(name: "AWSLambdaEvents", package: "swift-aws-lambda"),
                // .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda"),
            ]
            ),
    ]
)
