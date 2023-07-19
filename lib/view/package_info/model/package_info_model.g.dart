// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageInfoModel _$PackageInfoModelFromJson(Map<String, dynamic> json) =>
    PackageInfoModel(
      basTarih: json['basTarih'] as String?,
      bitTarih: json['bitTarih'] as String?,
      createDate: json['createDate'] as String?,
      createUserId: json['createUserId'] as int?,
      id: json['id'] as int?,
      paket: json['paket'] as int?,
      tutar: (json['tutar'] as num?)?.toDouble(),
      uyeId: json['uyeId'] as int?,
      indirimli: json['indirimli'] as int?,
      izinBasTarih: json['izinBasTarih'] as String?,
      izinBitTarih: json['izinBitTarih'] as String?,
    );

Map<String, dynamic> _$PackageInfoModelToJson(PackageInfoModel instance) =>
    <String, dynamic>{
      'basTarih': instance.basTarih,
      'bitTarih': instance.bitTarih,
      'createDate': instance.createDate,
      'createUserId': instance.createUserId,
      'id': instance.id,
      'paket': instance.paket,
      'tutar': instance.tutar,
      'uyeId': instance.uyeId,
      'indirimli': instance.indirimli,
      'izinBasTarih': instance.izinBasTarih,
      'izinBitTarih': instance.izinBitTarih,
    };
