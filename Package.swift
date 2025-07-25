// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "CSUSTPlanetBackend",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "4.115.0"),
        // 🗄 An ORM for SQL and NoSQL databases.
        .package(url: "https://github.com/vapor/fluent.git", from: "4.9.0"),
        // 🪶 Fluent driver for SQLite.
        .package(url: "https://github.com/vapor/fluent-sqlite-driver.git", from: "4.6.0"),
        // 🔵 Non-blocking, event-driven networking for Swift. Used for custom executors
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.65.0"),
        .package(url: "https://github.com/vapor/apns.git", from: "5.0.0"),
        .package(url: "https://github.com/MihaelIsaev/VaporCron.git", from: "2.6.0"),
        .package(url: "https://github.com/zHElEARN/CSUSTKit.git", from: "1.0.20"),
    ],
    targets: [
        .executableTarget(
            name: "CSUSTPlanetBackend",
            dependencies: [
                .product(name: "Fluent", package: "fluent"),
                .product(name: "FluentSQLiteDriver", package: "fluent-sqlite-driver"),
                .product(name: "Vapor", package: "vapor"),
                .product(name: "NIOCore", package: "swift-nio"),
                .product(name: "NIOPosix", package: "swift-nio"),
                .product(name: "VaporAPNS", package: "apns"),
                .product(name: "VaporCron", package: "VaporCron"),
                .product(name: "CSUSTKit", package: "CSUSTKit"),
            ],
            swiftSettings: swiftSettings
        )
    ]
)

var swiftSettings: [SwiftSetting] {
    [
        .enableUpcomingFeature("ExistentialAny")
    ]
}
