# SwiftUIGeometryUtils

<!-- Header Logo -->

<!-- <div align="center">
   <img width="600px" src="./Extras/banner-logo.png" alt="Banner Logo">
</div> -->


<!-- Badges -->

<p>
    <img src="https://img.shields.io/badge/iOS-14.0+-865EFC.svg" />
    <img src="https://img.shields.io/badge/iPadOS-14.0+-F65EFC.svg" />
    <img src="https://img.shields.io/badge/macOS-11.0+-179AC8.svg" />
    <img src="https://img.shields.io/badge/tvOS-14.0+-41465B.svg" />
    <img src="https://img.shields.io/badge/watchOS-7.0+-1FD67A.svg" />
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" />
    <img src="https://github.com/CypherPoet/SwiftUIGeometryUtils/workflows/Build%20&%20Test/badge.svg" />
    <a href="https://github.com/apple/swift-package-manager">
      <img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" />
    </a>
    <a href="https://twitter.com/cypher_poet">
        <img src="https://img.shields.io/badge/Contact-@cypher_poet-lightgrey.svg?style=flat" alt="Twitter: @cypher_poet" />
    </a>
</p>


<p align="center">

_Starter utilities for creating magic with geometry and shapes in SwiftUI._

<p />


## Installation

### Xcode Projects

Select `File` -> `Swift Packages` -> `Add Package Dependency` and enter `https://github.com/CypherPoet/SwiftUIGeometryUtils`.


### Swift Package Manager Projects

You can add `CypherPoetSwiftUIGeometryUtils` as a package dependency in your `Package.swift` file:

```swift
let package = Package(
    //...
    dependencies: [
      .package(
          name: "CypherPoetSwiftUIGeometryUtils",
          url: "https://github.com/CypherPoet/SwiftUIGeometryUtils",
          .upToNextMinor(from: "0.2.0")
      ),
    ],
    //...
)
```

From there, refer to the `SwiftUIGeometryUtils` "product" delivered by the `CypherPoetSwiftUIGeometryUtils` "package" inside of any of your project's target dependencies:

```swift
targets: [
    .target(
        name: "YourLibrary",
        dependencies: [
            .product(name: "SwiftUIGeometryUtils", package: "CypherPoetSwiftUIGeometryUtils"),
        ],
        ...
    ),
    ...
]
```

Then simply `import SwiftUIGeometryUtils` wherever you’d like to use it.


<!-- ## Usage



## 🗺 Roadmap

- World Domination -->



## Contributing

Contributions to `SwiftUIGeometryUtils` are most welcome. Check out some of the [issue templates](./.github/ISSUE_TEMPLATE/) for more info.



## 💻 Developing

### Requirements

- Xcode 13.0+ (Recommended)


### 📜 Creating & Building Documentation

Documentation is built with [Xcode's DocC](https://developer.apple.com/documentation/docc). More details are forthcoming here -- but for now,  see [Apple's guidance on how to build, run, and create DocC content](https://developer.apple.com/documentation/docc/api-reference-syntax).



## 🏷 License

`SwiftUIGeometryUtils` is available under the MIT license. See the [LICENSE file](./LICENSE) for more info.
