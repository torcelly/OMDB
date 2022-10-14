# OMDB
A Swift Package for The Open Movie Database (OMDB) <https://www.omdbapi.com>

## Requirements

* Swift 5.6

## Installation

### [Swift Package Manager](https://github.com/apple/swift-package-manager)

Add the TMDb package as a dependency to your `Package.swift` file, and add it as a dependency to your target.

```swift
// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(url: "https://github.com/torcelly/OMDB.git", upToNextMajor: "1.0.0")
  ],
  targets: [
    .target(name: "MyPackage", dependencies: ["OMDB"])
  ]
)
```

## Setup

### Get an API Key

Create an API key from The Open Movie Database web site [https://www.omdbapi.com/apikey.aspx](https://www.omdbapi.com/apikey.aspx).

## API Areas

### Search by title

Get an up to date list of the officially supported movie certifications on TMDb.

### Search by ID

System wide configuration information.

## Documentation

The latest documentation for the OMDB APIs is available at [https://torcelly.github.io/OMDB/documentation/omdb](https://torcelly.github.io/OMDB/documentation/omdb).

## References

* [http://www.omdbapi.com](http://www.omdbapi.com)
* [Swagger files JSON](http://www.omdbapi.com/swagger.json)

## License

This library is licensed under the Apache License 2.0. See [LICENSE](https://github.com/torcelly/OMDB/blob/main/LICENSE) for details.
