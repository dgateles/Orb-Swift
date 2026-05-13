// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Orb",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .tvOS(.v17),
        .watchOS(.v10),
        .visionOS(.v1),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Orb",
            targets: ["Orb"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        // `path: "Sources"` agrupa todo conteúdo de Sources/ (Config,
        // Extensions, OrbView/*) num único target `Orb`. Sem isso o
        // SPM puro só consegue resolver via fallback "single-target →
        // Sources/", e clients estritos como Tuist falham com
        // "Default source path not found for target Orb".
        .target(
            name: "Orb",
            path: "Sources"
        ),
    ]
)
