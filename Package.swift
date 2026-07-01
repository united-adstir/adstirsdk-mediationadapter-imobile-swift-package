// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdstirSDKMediationAdapterIMobile",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdstirAdsMediationAdapterIMobile",
            targets: ["AdstirAdsMediationAdapterIMobileTarget", "IMobileSDK"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/united-adstir/adstirsdk-swift-package.git",
            exact: "2.17.7"
        ),
    ],
    targets: [
        .target(
            name: "AdstirAdsMediationAdapterIMobileTarget",
            dependencies: [
                .target(name: "IMobileAdapter"),
                .product(name: "AdstirAds", package: "adstirsdk-swift-package"),
            ],
            path: "Sources/AdstirSDKMediationAdapterIMobile-Swift-Package"
        ),
        .binaryTarget(
            name: "IMobileAdapter",
            url: "https://dl.ad-stir.com/sdk/spm/2.17.7/AdstirAdsMediationAdapterIMobile.xcframework.zip",
            checksum: "d906e161a6ee6818bf99d17e92684e2ae0b73376eb38ee5176b236d6d52648ca"
        ),
        .binaryTarget(
            name: "IMobileSDK",
            url: "https://github.com/imobile/adnw-sdk-ios/releases/download/v2.3.4/ImobileSdkAds.xcframework.zip",
            checksum: "6085707cdbc5520b4c61df617f372ca60102b13c34485ba7205323a8cc966dc7"
        ),
    ]
)
