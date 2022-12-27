// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/KMMRules/kpgalligan/github/kmmrules/allshared-kmmbridge/0.8.1/allshared-kmmbridge-0.8.1.zip"
let remoteKotlinChecksum = "770b6365168db4c0e1e4b430906dead81cc6911697f85c7a1dac8d8ecaffa606"
let packageName = "allshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)