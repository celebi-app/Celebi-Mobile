import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'collection_model.g.dart';

@JsonSerializable()
class CollectionModel with EquatableMixin {
  String? odemeTarihi;
  String? donem;
  String? tur;
  int? borc;
  int? odenen;
  int? kalan;
  String? aciklama;

  CollectionModel({
    this.odemeTarihi,
    this.donem,
    this.tur,
    this.borc,
    this.odenen,
    this.kalan,
    this.aciklama,
  });

  factory CollectionModel.fromJson(Map<String, dynamic> json) => _$CollectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionModelToJson(this);

  @override
  List<Object?> get props => [odemeTarihi, donem, tur, borc, odenen, kalan, aciklama];

  CollectionModel copyWith({
    String? odemeTarihi,
    String? donem,
    String? tur,
    int? borc,
    int? odenen,
    int? kalan,
    String? aciklama,
  }) {
    return CollectionModel(
      odemeTarihi: odemeTarihi ?? this.odemeTarihi,
      donem: donem ?? this.donem,
      tur: tur ?? this.tur,
      borc: borc ?? this.borc,
      odenen: odenen ?? this.odenen,
      kalan: kalan ?? this.kalan,
      aciklama: aciklama ?? this.aciklama,
    );
  }
}
