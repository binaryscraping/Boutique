import Foundation
import Bodega

public protocol CacheKeyConvertible {
  var cacheKey: CacheKey { get }
}

extension String: CacheKeyConvertible {
  public var cacheKey: CacheKey {
    CacheKey(verbatim: self)
  }
}

extension UUID: CacheKeyConvertible {
  public var cacheKey: CacheKey {
    CacheKey(verbatim: uuidString)
  }
}

extension URL: CacheKeyConvertible {
  public var cacheKey: CacheKey {
    CacheKey(url: self)
  }
}
