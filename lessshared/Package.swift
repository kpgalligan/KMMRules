// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/KMMRules/kpgalligan/github/kmmrules/lessshared-kmmbridge/0.8.6/lessshared-kmmbridge-0.8.6.zip"
let remoteKotlinChecksum = "b2e0d6a24b8676f740153da82beabb258df72264c82c1e21718921db547314e1"
let packageName = "lessshared"

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