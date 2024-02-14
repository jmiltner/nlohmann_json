// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nlohmann-json",
     platforms: [
        .iOS(.v12), .macOS(.v10_13), .tvOS(.v12), .watchOS(.v4)
    ],
    products: [
        .library(name: "nlohmann_json", targets: ["json"])
    ],
    targets: [
        .target(
            name: "json",
            path: "single_include/nlohmann",
            publicHeadersPath: "."
        )
    ],
    cxxLanguageStandard: .cxx11
)
