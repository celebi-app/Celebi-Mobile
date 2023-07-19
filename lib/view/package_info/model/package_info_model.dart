import 'package:json_annotation/json_annotation.dart';
part 'package_info_model.g.dart';

@JsonSerializable()
class PackageInfoModel {
  String? basTarih;
  String? bitTarih;
  String? createDate;
  int? createUserId;
  int? id;
  int? paket;
  double? tutar;
  int? uyeId;
  int? indirimli;
  String? izinBasTarih;
  String? izinBitTarih;

  PackageInfoModel({
    this.basTarih,
    this.bitTarih,
    this.createDate,
    this.createUserId,
    this.id,
    this.paket,
    this.tutar,
    this.uyeId,
    this.indirimli,
    this.izinBasTarih,
    this.izinBitTarih,
  });

  factory PackageInfoModel.fromJson(Map<String, dynamic> json) => _$PackageInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PackageInfoModelToJson(this);

  PackageInfoModel copyWith({
    String? basTarih,
    String? bitTarih,
    String? createDate,
    int? createUserId,
    int? id,
    int? paket,
    double? tutar,
    int? uyeId,
    int? indirimli,
    String? izinBasTarih,
    String? izinBitTarih,
  }) {
    return PackageInfoModel(
      basTarih: basTarih ?? this.basTarih,
      bitTarih: bitTarih ?? this.bitTarih,
      createDate: createDate ?? this.createDate,
      createUserId: createUserId ?? this.createUserId,
      id: id ?? this.id,
      paket: paket ?? this.paket,
      tutar: tutar ?? this.tutar,
      uyeId: uyeId ?? this.uyeId,
      indirimli: indirimli ?? this.indirimli,
      izinBasTarih: izinBasTarih ?? this.izinBasTarih,
      izinBitTarih: izinBitTarih ?? this.izinBitTarih,
    );
  }
}
