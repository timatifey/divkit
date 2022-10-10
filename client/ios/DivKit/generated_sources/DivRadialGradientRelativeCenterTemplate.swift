// Generated code. Do not modify.

import CommonCore
import Foundation
import Serialization
import TemplatesSupport

public final class DivRadialGradientRelativeCenterTemplate: TemplateValue, TemplateDeserializable {
  public static let type: String = "relative"
  public let parent: String? // at least 1 char
  public let value: Field<Expression<Double>>?

  static let parentValidator: AnyValueValidator<String> =
    makeStringValidator(minLength: 1)

  public convenience init(dictionary: [String: Any], templateToType: TemplateToType) throws {
    do {
      self.init(
        parent: try dictionary.getOptionalField("type", validator: Self.parentValidator),
        value: try dictionary.getOptionalExpressionField("value")
      )
    } catch let DeserializationError.invalidFieldRepresentation(field: field, representation: representation) {
      throw DeserializationError.invalidFieldRepresentation(field: "div-radial-gradient-relative-center_template." + field, representation: representation)
    }
  }

  init(
    parent: String?,
    value: Field<Expression<Double>>? = nil
  ) {
    self.parent = parent
    self.value = value
  }

  private static func resolveOnlyLinks(context: Context, parent: DivRadialGradientRelativeCenterTemplate?) -> DeserializationResult<DivRadialGradientRelativeCenter> {
    let valueValue = parent?.value?.resolveValue(context: context) ?? .noValue
    var errors = mergeErrors(
      valueValue.errorsOrWarnings?.map { .right($0.asError(deserializing: "value", level: .error)) }
    )
    if case .noValue = valueValue {
      errors.append(.right(FieldError(fieldName: "value", level: .error, error: .requiredFieldIsMissing)))
    }
    guard
      let valueNonNil = valueValue.value
    else {
      return .failure(NonEmptyArray(errors)!)
    }
    let result = DivRadialGradientRelativeCenter(
      value: valueNonNil
    )
    return errors.isEmpty ? .success(result) : .partialSuccess(result, warnings: NonEmptyArray(errors)!)
  }

  public static func resolveValue(context: Context, parent: DivRadialGradientRelativeCenterTemplate?, useOnlyLinks: Bool) -> DeserializationResult<DivRadialGradientRelativeCenter> {
    if useOnlyLinks {
      return resolveOnlyLinks(context: context, parent: parent)
    }
    var valueValue: DeserializationResult<Expression<Double>> = parent?.value?.value() ?? .noValue
    context.templateData.forEach { key, __dictValue in
      switch key {
      case "value":
        valueValue = deserialize(__dictValue).merged(with: valueValue)
      case parent?.value?.link:
        valueValue = valueValue.merged(with: deserialize(__dictValue))
      default: break
      }
    }
    var errors = mergeErrors(
      valueValue.errorsOrWarnings?.map { Either.right($0.asError(deserializing: "value", level: .error)) }
    )
    if case .noValue = valueValue {
      errors.append(.right(FieldError(fieldName: "value", level: .error, error: .requiredFieldIsMissing)))
    }
    guard
      let valueNonNil = valueValue.value
    else {
      return .failure(NonEmptyArray(errors)!)
    }
    let result = DivRadialGradientRelativeCenter(
      value: valueNonNil
    )
    return errors.isEmpty ? .success(result) : .partialSuccess(result, warnings: NonEmptyArray(errors)!)
  }

  private func mergedWithParent(templates: Templates) throws -> DivRadialGradientRelativeCenterTemplate {
    guard let parent = parent, parent != Self.type else { return self }
    guard let parentTemplate = templates[parent] as? DivRadialGradientRelativeCenterTemplate else {
      throw DeserializationError.unknownType(type: parent)
    }
    let mergedParent = try parentTemplate.mergedWithParent(templates: templates)

    return DivRadialGradientRelativeCenterTemplate(
      parent: nil,
      value: value ?? mergedParent.value
    )
  }

  public func resolveParent(templates: Templates) throws -> DivRadialGradientRelativeCenterTemplate {
    return try mergedWithParent(templates: templates)
  }
}