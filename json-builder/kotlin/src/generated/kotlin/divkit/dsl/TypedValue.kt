@file:Suppress(
    "unused",
    "UNUSED_PARAMETER",
)

package divkit.dsl

import com.fasterxml.jackson.annotation.JsonAnyGetter
import com.fasterxml.jackson.annotation.JsonIgnore
import com.fasterxml.jackson.annotation.JsonValue
import divkit.dsl.annotation.*
import divkit.dsl.core.*
import divkit.dsl.scope.*
import kotlin.Any
import kotlin.String
import kotlin.Suppress
import kotlin.collections.List
import kotlin.collections.Map

/**
 * Possible values: [StringValue], [IntegerValue], [NumberValue], [ColorValue], [BooleanValue], [UrlValue], [DictValue], [ArrayValue].
 */
@Generated
sealed interface TypedValue

@Generated
fun TypedValue.asList() = listOf(this)
