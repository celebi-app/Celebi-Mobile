// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionModel _$CollectionModelFromJson(Map<String, dynamic> json) =>
    CollectionModel(
      odemeTarihi: json['odemeTarihi'] as String?,
      donem: json['donem'] as String?,
      tur: json['tur'] as String?,
      borc: json['borc'] as int?,
      odenen: json['odenen'] as int?,
      kalan: json['kalan'] as int?,
      aciklama: json['aciklama'] as String?,
    );

Map<String, dynamic> _$CollectionModelToJson(CollectionModel instance) =>
    <String, dynamic>{
      'odemeTarihi': instance.odemeTarihi,
      'donem': instance.donem,
      'tur': instance.tur,
      'borc': instance.borc,
      'odenen': instance.odenen,
      'kalan': instance.kalan,
      'aciklama': instance.aciklama,
    };
