// swift-tools-version:5.3

import PackageDescription

let pkg = Package(name: "PMKAlamofire")
pkg.products = [
    .library(name: "PMKAlamofire", targets: ["PMKAlamofire"]),
]
pkg.dependencies = [
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
    .package(url: "https://github.com/mxcl/PromiseKit.git", .upToNextMajor(from: "6.0.0"))
]
pkg.swiftLanguageVersions = [.v5, .v5_3]

let target: Target = .target(name: "PMKAlamofire")
target.path = "Sources"
target.exclude = ["Tests"]
target.dependencies = [
    "PromiseKit",
    "Alamofire"
]

pkg.targets = [target]