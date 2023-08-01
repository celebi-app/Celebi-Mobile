// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageInfoModel _$PackageInfoModelFromJson(Map<String, dynamic> json) =>
    PackageInfoModel(
      paket: json['paket'] as String?,
      tutar: json['tutar'] as int?,
      baslangicTarihi: json['baslangicTarihi'] as String?,
      bitisTarihi: json['bitisTarihi'] as String?,
      izinBaslangicTarihi: json['izinBaslangicTarihi'] as String?,
      izinBitisTarihi: json['izinBitisTarihi'] as String?,
      olusturanKullanici: json['olusturanKullanici'] as String?,
    );

Map<String, dynamic> _$PackageInfoModelToJson(PackageInfoModel instance) =>
    <String, dynamic>{
      'paket': instance.paket,
      'tutar': instance.tutar,
      'baslangicTarihi': instance.baslangicTarihi,
      'bitisTarihi': instance.bitisTarihi,
      'izinBaslangicTarihi': instance.izinBaslangicTarihi,
      'izinBitisTarihi': instance.izinBitisTarihi,
      'olusturanKullanici': instance.olusturanKullanici,
    };
