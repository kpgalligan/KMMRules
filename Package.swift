// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/KMMRules/kpgalligan/github/kmmrules/allshared-kmmbridge/0.8.2/allshared-kmmbridge-0.8.2.zip"
let remoteKotlinChecksum = "4c934323d51845406944c5ca8b4b44b180b4cef2c007e08a755da2e260be66df"
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