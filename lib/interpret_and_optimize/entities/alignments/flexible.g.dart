// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flexible _$FlexibleFromJson(Map<String, dynamic> json) {
  return Flexible(
    json['UUID'] as String,
    child: json['child'],
    flex: json['flex'] as int,
  )
    ..subsemantic = json['subsemantic'] as String
    ..color = json['color'] as String
    ..size = json['size'] as Map<String, dynamic>
    ..borderInfo = json['borderInfo'] as Map<String, dynamic>
    ..alignment = json['alignment'] as Map<String, dynamic>
    ..widgetType = json['widgetType'] as String;
}

Map<String, dynamic> _$FlexibleToJson(Flexible instance) => <String, dynamic>{
      'subsemantic': instance.subsemantic,
      'color': instance.color,
      'size': instance.size,
      'borderInfo': instance.borderInfo,
      'alignment': instance.alignment,
      'flex': instance.flex,
      'child': instance.child,
      'UUID': instance.UUID,
      'widgetType': instance.widgetType,
    };
