import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel with EquatableMixin {
  String? tc;
  String? adSoyad;
  String? dogumTarihi;
  String? anneAdi;
  String? babaAdi;
  String? anneTelefon;
  String? babaTelefon;
  String? adres;
  String? fotoUrl;
  String? brans;
  String? altBrans;
  String? kusak;
  String? antrenor;
  String? kayitTarihi;
  String? durum;
  String? lisansNo;
  int? lisansYili;
  int? aidatTutari;

  UserModel({
    this.tc,
    this.adSoyad,
    this.dogumTarihi,
    this.anneAdi,
    this.babaAdi,
    this.anneTelefon,
    this.babaTelefon,
    this.adres,
    this.fotoUrl,
    this.brans,
    this.altBrans,
    this.kusak,
    this.antrenor,
    this.kayitTarihi,
    this.durum,
    this.lisansNo,
    this.lisansYili,
    this.aidatTutari,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props => [
        tc,
        adSoyad,
        dogumTarihi,
        anneAdi,
        babaAdi,
        anneTelefon,
        babaTelefon,
        adres,
        fotoUrl,
        brans,
        altBrans,
        kusak,
        antrenor,
        kayitTarihi,
        durum,
        lisansNo,
        lisansYili,
        aidatTutari
      ];

  UserModel copyWith({
    String? tc,
    String? adSoyad,
    String? dogumTarihi,
    String? anneAdi,
    String? babaAdi,
    String? anneTelefon,
    String? babaTelefon,
    String? adres,
    String? fotoUrl,
    String? brans,
    String? altBrans,
    String? kusak,
    String? antrenor,
    String? kayitTarihi,
    String? durum,
    String? lisansNo,
    int? lisansYili,
    int? aidatTutari,
  }) {
    return UserModel(
      tc: tc ?? this.tc,
      adSoyad: adSoyad ?? this.adSoyad,
      dogumTarihi: dogumTarihi ?? this.dogumTarihi,
      anneAdi: anneAdi ?? this.anneAdi,
      babaAdi: babaAdi ?? this.babaAdi,
      anneTelefon: anneTelefon ?? this.anneTelefon,
      babaTelefon: babaTelefon ?? this.babaTelefon,
      adres: adres ?? this.adres,
      fotoUrl: fotoUrl ?? this.fotoUrl,
      brans: brans ?? this.brans,
      altBrans: altBrans ?? this.altBrans,
      kusak: kusak ?? this.kusak,
      antrenor: antrenor ?? this.antrenor,
      kayitTarihi: kayitTarihi ?? this.kayitTarihi,
      durum: durum ?? this.durum,
      lisansNo: lisansNo ?? this.lisansNo,
      lisansYili: lisansYili ?? this.lisansYili,
      aidatTutari: aidatTutari ?? this.aidatTutari,
    );
  }
}
