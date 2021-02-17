// swift-tools-version:5.1

import PackageDescription

let package = Package(
        name: "PMKAlamofire",
        platforms: [.macOS(.v10_12),
                    .iOS(.v10),
                    .tvOS(.v10),
                    .watchOS(.v3)],
        products: [
            .library(name: "PMKAlamofire", targets: ["PMKAlamofire"])
        ],
        dependencies: [
            .package(name: "PromiseKit",
                 url: "https://github.com/AlexMSwift/PromiseKit",
                 .upToNextMajor(from: "6.13.4-beta.1")),
            .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.2.2")
        ],
        targets: [
            .target(name: "PMKAlamofire", dependencies: [
                 .product(name: "PromiseKit"),
                 .product(name: "Alamofire"),
            ], path: "Sources")
        ],
        swiftLanguageVersions: [.v5])
