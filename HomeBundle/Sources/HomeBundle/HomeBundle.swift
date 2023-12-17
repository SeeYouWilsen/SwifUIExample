// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

private class BundleFinder {}

public extension Foundation.Bundle {
    static let home: Bundle = {
        let bundleName = "HomeBundle"
        let bundleResourceURL = Bundle(for: BundleFinder.self).resourceURL
        let candidates = [
            Bundle.main.resourceURL,
            bundleResourceURL,
            Bundle.main.bundleURL,
            bundleResourceURL?.deletingLastPathComponent().deletingLastPathComponent().deletingLastPathComponent(),
            bundleResourceURL?.deletingLastPathComponent().deletingLastPathComponent(),
            bundleResourceURL?.deletingLastPathComponent()
        ]

        for candidate in candidates {
            // 对于非 mac 苹果，可以需要使用 resources 尾缀
            let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        fatalError("unable to find bundle named \(bundleName)")
    }()
}
