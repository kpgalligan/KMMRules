// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/KMMRules/kpgalligan/github/kmmrules/allshared-kmmbridge/0.8.5/allshared-kmmbridge-0.8.5.zip"
let remoteKotlinChecksum = "fbe69f98db912550f0da48dff81586a99372ccf925aa9892679c2d675e8a96cc"
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