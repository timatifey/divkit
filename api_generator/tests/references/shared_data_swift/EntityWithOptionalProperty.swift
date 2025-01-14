// Generated code. Do not modify.

import CommonCore
import Foundation
import Serialization

public final class EntityWithOptionalProperty {
  public static let type: String = "entity_with_optional_property"
  public let property: Expression<String>?

  public func resolveProperty(_ resolver: ExpressionResolver) -> String? {
    resolver.resolveString(property, initializer: { $0 })
  }

  init(
    property: Expression<String>? = nil
  ) {
    self.property = property
  }
}

#if DEBUG
extension EntityWithOptionalProperty: Equatable {
  public static func ==(lhs: EntityWithOptionalProperty, rhs: EntityWithOptionalProperty) -> Bool {
    guard
      lhs.property == rhs.property
    else {
      return false
    }
    return true
  }
}
#endif
