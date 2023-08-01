import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'package_info_model.g.dart';

@JsonSerializable()
class PackageInfoModel with EquatableMixin {
  String? paket;
  int? tutar;
  String? baslangicTarihi;
  String? bitisTarihi;
  String? izinBaslangicTarihi;
  String? izinBitisTarihi;
  String? olusturanKullanici;

  PackageInfoModel({
    this.paket,
    this.tutar,
    this.baslangicTarihi,
    this.bitisTarihi,
    this.izinBaslangicTarihi,
    this.izinBitisTarihi,
    this.olusturanKullanici,
  });

  factory PackageInfoModel.fromJson(Map<String, dynamic> json) => _$PackageInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PackageInfoModelToJson(this);

  @override
  List<Object?> get props =>
      [paket, tutar, baslangicTarihi, bitisTarihi, izinBaslangicTarihi, izinBitisTarihi, olusturanKullanici];

  PackageInfoModel copyWith({
    String? paket,
    int? tutar,
    String? baslangicTarihi,
    String? bitisTarihi,
    String? izinBaslangicTarihi,
    String? izinBitisTarihi,
    String? olusturanKullanici,
  }) {
    return PackageInfoModel(
      paket: paket ?? this.paket,
      tutar: tutar ?? this.tutar,
      baslangicTarihi: baslangicTarihi ?? this.baslangicTarihi,
      bitisTarihi: bitisTarihi ?? this.bitisTarihi,
      izinBaslangicTarihi: izinBaslangicTarihi ?? this.izinBaslangicTarihi,
      izinBitisTarihi: izinBitisTarihi ?? this.izinBitisTarihi,
      olusturanKullanici: olusturanKullanici ?? this.olusturanKullanici,
    );
  }
}
