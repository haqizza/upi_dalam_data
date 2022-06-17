class KeketatanPerTahun {
  List<Data>? data;

  KeketatanPerTahun({this.data});

  KeketatanPerTahun.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? fak;
  int? keketatan;

  Data({this.fak, this.keketatan});

  Data.fromJson(Map<String, dynamic> json) {
    fak = json['fak'];
    keketatan = json['keketatan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fak'] = this.fak;
    data['keketatan'] = this.keketatan;
    return data;
  }
}
