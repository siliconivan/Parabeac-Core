import 'package:json_annotation/json_annotation.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_intermediate_node.dart';
part 'pb_symbol_instance_overridable_value.g.dart';

@JsonSerializable(nullable: false)
class PBSymbolInstanceOverridableValue {
  @JsonKey(toJson: _typeToJson, fromJson: _typeFromJson)
  final Type type;
  final String do_objectId;
  final dynamic value;

  PBSymbolInstanceOverridableValue(this.do_objectId, this.value, this.type);

  static String _typeToJson(type) {
    return {'Type': type.toString()}.toString();
  }

  static Type _typeFromJson(jsonType) {
    //TODO: return a more specified Type
    return PBIntermediateNode;
  }

  factory PBSymbolInstanceOverridableValue.fromJson(Map<String, Object> json) =>
      _$PBSymbolInstanceOverridableValueFromJson(json);

  @override
  Map<String, Object> toJson() =>
      _$PBSymbolInstanceOverridableValueToJson(this);
}
