import 'dart:core';

class Extra {
  Extra(
      {
        required this.id,
        required this.cins_id,
        required this.cesit_ad,
        required this.teslim,
        required this.yeri,
        required this.adet,
        required this.viol,
        required this.viol_adet,
        required this.tarih,
        required this.fidelik,
        required this.asi,
        required this.aciklama,
      }
      );

  Extra.fromJson(Map<String, Object?> json)
      : this(
    id: json['id']! as int,
    cins_id: json['cins_id']! as int,
    cesit_ad: json['cesit_ad']! as String,
    teslim: json['teslim']! as String,
    yeri: json['yeri']! as String,
    adet: json['adet']! as int,
    viol: json['viol']! as int,
    viol_adet: json['viol_adet']! as int,
    tarih: json['tarih']! as DateTime,
    fidelik: json['fidelik']! as int,
    asi: json['asi']! as String,
    aciklama: json['aciklama']! as String,

  );

  final int id;
  final int cins_id;
  final String cesit_ad;
  final String teslim;
  final String yeri;
  final int adet;
  final int viol;
  final int viol_adet;
  final DateTime tarih;
  final int fidelik;
  final String asi;
  final String aciklama;


  Map<String, Object?> toJson() {
    return {
      'id': id,
      'cins_id': cins_id,
      'cesit_ad': cesit_ad,
      'teslim': teslim,
      'yeri': yeri,
      'adet': adet,
      'viol': viol,
      'viol_adet': viol_adet,
      'tarih': tarih,
      'fidelik': fidelik,
      'asi': asi,
      'aciklama': aciklama,
    };
  }
}

