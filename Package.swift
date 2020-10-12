// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "CombineRextensions",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)],
    products: [
        .library(name: "CombineRextensions", targets: ["CombineRextensions"])
    ],
    dependencies: [
        .package(name: "SwiftRex", url: "https://github.com/npvisual/SwiftRex.git", .branch("master"))
    ],
    targets: [
        .target(name: "CombineRextensions", dependencies: [.product(name: "CombineRex", package: "SwiftRex")])
    ]
)
