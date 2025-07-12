// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Lila",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .executable(name: "Lila", targets: ["Lila"])
    ],
    targets: [
        .executableTarget(
            name: "Lila",
            path: "Sources/Lila"
        )
    ]
)
