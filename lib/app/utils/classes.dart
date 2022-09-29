class ListDocuments {
  List<Documents>? documents;

  ListDocuments({this.documents});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.documents != null) {
      data['documents'] = this.documents?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Documents {
  String? imei;
  String? ean;
  String? cnpj;
  String? cpf;
  String? rg;
  String? tit;

  Documents({this.imei, this.ean, this.cnpj, this.cpf, this.rg, this.tit});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imei'] = this.imei;
    data['ean'] = this.ean;
    data['cnpj'] = this.cnpj;
    data['cpf'] = this.cpf;
    data['rg'] = this.rg;
    data['tit'] = this.tit;
    return data;
  }
}