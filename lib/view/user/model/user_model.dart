import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? aciklama;
  String? ad;
  String? adres;
  int? aidat;
  int? altBransId;
  String? anneAd;
  int? antrenorId;
  String? babaAd;
  double? bakiye;
  String? basTarih;
  String? bitTarih;
  int? bransId;
  String? createDate;
  int? createUserId;
  String? dogumTarihi;
  int? durum;
  double? ekDers;
  String? email;
  String? foto;
  String? hesKodu;
  int? id;
  int? indirimli;
  String? izinBasTarih;
  String? izindenDonusTarih;
  String? kartNumarasi;
  String? kayitTarihi;
  int? kusakId;
  int? kutlamaSmsYil;
  String? lisansNo;
  int? lisansYil;
  String? meslek;
  String? odemeGunu;
  int? paket;
  String? soyad;
  String? tc;
  String? tel1;
  String? tel2;
  int? tutar;

  UserModel({
    this.aciklama,
    this.ad,
    this.adres,
    this.aidat,
    this.altBransId,
    this.anneAd,
    this.antrenorId,
    this.babaAd,
    this.bakiye,
    this.basTarih,
    this.bitTarih,
    this.bransId,
    this.createDate,
    this.createUserId,
    this.dogumTarihi,
    this.durum,
    this.ekDers,
    this.email,
    this.foto,
    this.hesKodu,
    this.id,
    this.indirimli,
    this.izinBasTarih,
    this.izindenDonusTarih,
    this.kartNumarasi,
    this.kayitTarihi,
    this.kusakId,
    this.kutlamaSmsYil,
    this.lisansNo,
    this.lisansYil,
    this.meslek,
    this.odemeGunu,
    this.paket,
    this.soyad,
    this.tc,
    this.tel1,
    this.tel2,
    this.tutar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel copyWith({
    String? aciklama,
    String? ad,
    String? adres,
    int? aidat,
    int? altBransId,
    String? anneAd,
    int? antrenorId,
    String? babaAd,
    double? bakiye,
    String? basTarih,
    String? bitTarih,
    int? bransId,
    String? createDate,
    int? createUserId,
    String? dogumTarihi,
    int? durum,
    double? ekDers,
    String? email,
    String? foto,
    String? hesKodu,
    int? id,
    int? indirimli,
    String? izinBasTarih,
    String? izindenDonusTarih,
    String? kartNumarasi,
    String? kayitTarihi,
    int? kusakId,
    int? kutlamaSmsYil,
    String? lisansNo,
    int? lisansYil,
    String? meslek,
    String? odemeGunu,
    int? paket,
    String? soyad,
    String? tc,
    String? tel1,
    String? tel2,
    int? tutar,
  }) {
    return UserModel(
      aciklama: aciklama ?? this.aciklama,
      ad: ad ?? this.ad,
      adres: adres ?? this.adres,
      aidat: aidat ?? this.aidat,
      altBransId: altBransId ?? this.altBransId,
      anneAd: anneAd ?? this.anneAd,
      antrenorId: antrenorId ?? this.antrenorId,
      babaAd: babaAd ?? this.babaAd,
      bakiye: bakiye ?? this.bakiye,
      basTarih: basTarih ?? this.basTarih,
      bitTarih: bitTarih ?? this.bitTarih,
      bransId: bransId ?? this.bransId,
      createDate: createDate ?? this.createDate,
      createUserId: createUserId ?? this.createUserId,
      dogumTarihi: dogumTarihi ?? this.dogumTarihi,
      durum: durum ?? this.durum,
      ekDers: ekDers ?? this.ekDers,
      email: email ?? this.email,
      foto: foto ?? this.foto,
      hesKodu: hesKodu ?? this.hesKodu,
      id: id ?? this.id,
      indirimli: indirimli ?? this.indirimli,
      izinBasTarih: izinBasTarih ?? this.izinBasTarih,
      izindenDonusTarih: izindenDonusTarih ?? this.izindenDonusTarih,
      kartNumarasi: kartNumarasi ?? this.kartNumarasi,
      kayitTarihi: kayitTarihi ?? this.kayitTarihi,
      kusakId: kusakId ?? this.kusakId,
      kutlamaSmsYil: kutlamaSmsYil ?? this.kutlamaSmsYil,
      lisansNo: lisansNo ?? this.lisansNo,
      lisansYil: lisansYil ?? this.lisansYil,
      meslek: meslek ?? this.meslek,
      odemeGunu: odemeGunu ?? this.odemeGunu,
      paket: paket ?? this.paket,
      soyad: soyad ?? this.soyad,
      tc: tc ?? this.tc,
      tel1: tel1 ?? this.tel1,
      tel2: tel2 ?? this.tel2,
      tutar: tutar ?? this.tutar,
    );
  }
}
