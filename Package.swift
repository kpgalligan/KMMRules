// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/KMMRules/kpgalligan/github/kmmrules/lessshared-kmmbridge/0.9.3/lessshared-kmmbridge-0.9.3.zip"
let remoteKotlinChecksum = "b2e0d6a24b8676f740153da82beabb258df72264c82c1e21718921db547314e1"
let packageName = "lessshared"

let remoteKotlinUrl2 = "https://maven.pkg.github.com/kpgalligan/KMMRules/kpgalligan/github/kmmrules/allshared-kmmbridge/0.9.3/allshared-kmmbridge-0.9.3.zip"
let remoteKotlinChecksum2 = "60ce4c9626926ada1e3a2d526151065790307829824353412a87e925a0f96aec"
let packageName2 = "allshared"

let package = Package(
    name: "moreshared",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
        .library(
            name: packageName2,
            targets: [packageName2]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
        .binaryTarget(
            name: packageName2,
            url: remoteKotlinUrl2,
            checksum: remoteKotlinChecksum2
        )
        ,
    ]
)