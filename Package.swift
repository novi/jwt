// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "JWT",
    products: [
        .library(name: "JWT", targets: ["JWT"]),
    ],
    dependencies: [
        // 🌎 Utility package containing tools for byte manipulation, Codable, OS APIs, and debugging.
        .package(url: "https://github.com/vapor/core.git", from: "3.0.0"),

        // 🔑 Hashing (BCrypt, SHA, HMAC, etc), encryption, and randomness.
        .package(url: "https://github.com/novi/crypto.git", .revision("f9c6d7602ffd6f0336d83bb0c892b2b2e62ba754") ),
    ],
    targets: [
        .target(name: "JWT", dependencies: ["Core", "CryptoKit"]),
        .testTarget(name: "JWTTests", dependencies: ["JWT"]),
    ]
)
