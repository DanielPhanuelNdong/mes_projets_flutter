class connexions {
  int? code;
  bool? head;
  int? type;

  Body? body;
  Body1? body1;
  connexions({
    this.code,
    this.head,
    this.type,
    this.body,
    this.body1,
  });

  factory connexions.fromJson(Map<String, dynamic> json) {
    bool? state = json['head'];
    return connexions(
        code: json['code'],
        head: json['head'],
        type: json['type'],
        body: state! ? Body.fromJson(json['body']) : null,
        body1: state ? null : Body1.fromJson(json['body'])  ,
        );
  }

  Map<String, dynamic> tojson() => {
        'code': code,
        'head': head,
        'type': type,
        'body': body,
        'body1': body1,
      };
}

class Body {
  Connexion? connexion;
  Client? client;
  Wallet? wallet;
  Body({
    this.connexion,
    this.client,
    this.wallet,
  });

  factory Body.fromJson(Map<String, dynamic> json) {
    return Body(
      connexion: Connexion.fromJson(json['connexion']),
      client: Client.fromJson(json['client']),
      wallet: Wallet.fromJson(json['wallet']),
    );
  }

  Map<String, dynamic> toJson() => {
        'connexion': connexion,
        'client': client,
        'wallet': wallet,
      };
}

class Body1 {
  String? msg;

  Body1({
    this.msg,
  });

  factory Body1.fromJson(Map<String, dynamic> json) {
    return Body1(
      msg: json['msg'],
    );
  }

  Map<String, dynamic> toJson() => {
        'msg': msg,
      };
}

class Connexion {
  String? codeconn;
  String? datedebconn;
  String? datefinconn;
  String? nomtermconn;
  String? adripconn;
  String? adrmaconn;
  String? statutconn;
  String? codecompte;
  String? nomcompte;
  String? logincompte;
  String? statutcompte;
  String? codesptrav;
  String? nomesptrav;
  String? lienesptrav;
  String? libesptrav;

  Connexion(
      {this.codeconn,
      this.datedebconn,
      this.datefinconn,
      this.nomtermconn,
      this.adripconn,
      this.adrmaconn,
      this.statutconn,
      this.codecompte,
      this.nomcompte,
      this.logincompte,
      this.statutcompte,
      this.codesptrav,
      this.nomesptrav,
      this.lienesptrav,
      this.libesptrav});

  factory Connexion.fromJson(Map<String, dynamic> json) {
    return Connexion(
      codeconn: json['codeconn'],
      datedebconn: json['datedebconn'],
      datefinconn: json['datefinconn'],
      nomtermconn: json['nomtermconn'],
      adripconn: json['adripconn'],
      adrmaconn: json['adrmaconn'],
      statutconn: json['statutconn'],
      codecompte: json['codecompte'],
      nomcompte: json['nomcompte'],
      logincompte: json['logincompte'],
      statutcompte: json['statutcompte'],
      codesptrav: json['codesptrav'],
      nomesptrav: json['nomesptrav'],
      lienesptrav: json['lienesptrav'],
      libesptrav: json['libesptrav'],
    );
  }

  Map<String, dynamic> toJson() => {
        'codeconn': codeconn,
        'datedebconn': datedebconn,
        'datefinconn': datefinconn,
        'nomtermconn': nomtermconn,
        'adripconn': adripconn,
        'adrmaconn': adrmaconn,
        'statutconn': statutconn,
        'codecompte': codecompte,
        'nomcompte': nomcompte,
        'logincompte': logincompte,
        'statutcompte': statutcompte,
        'codesptrav': codesptrav,
        'nomesptrav': nomesptrav,
        'lienesptrav': lienesptrav,
        'libesptrav': libesptrav,
      };
}

class Client {
  String? codeclient;
  String? codeutilis;
  String? nomsutilis;
  String? prenomsutilis;
  String? numtelutilis;
  String? emailutilis;
  String? codenreg;
  String? codecompte;
  String? nomcompte;
  String? logincompte;
  String? statutcompte;

  Client({
    this.codeclient,
    this.codeutilis,
    this.nomsutilis,
    this.prenomsutilis,
    this.numtelutilis,
    this.emailutilis,
    this.codenreg,
    this.codecompte,
    this.nomcompte,
    this.logincompte,
    this.statutcompte,
  });

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
      codeclient: json['codeclient'],
      codeutilis: json['codeutilis'],
      nomsutilis: json['nomsutilis'],
      prenomsutilis: json['prenomsutilis'],
      numtelutilis: json['numtelutilis'],
      emailutilis: json['emailutilis'],
      codenreg: json['codenreg'],
      codecompte: json['codecompte'],
      nomcompte: json['nomcompte'],
      logincompte: json['logincompte'],
      statutcompte: json['statutcompte'],
    );
  }

  Map<String, dynamic> toJson() => {
        'codeclient': codeclient,
        'codeutilis': codeutilis,
        'nomsutilis': nomsutilis,
        'prenomsutilis': prenomsutilis,
        'numtelutilis': numtelutilis,
        'emailutilis': emailutilis,
        'codenreg': codenreg,
        'codecompte': codecompte,
        'nomcompte': nomcompte,
        'logincompte': logincompte,
        'statutcompte': statutcompte,
      };
}

class Wallet {
  String? codewallet;
  String? intitulewallet;
  String? soldewallet;
  String? statutwallet;
  String? codeclient;
  String? codeutilis;

  Wallet({
    this.codewallet,
    this.intitulewallet,
    this.soldewallet,
    this.statutwallet,
    this.codeclient,
    this.codeutilis,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) {
    return Wallet(
      codewallet: json['codewallet'],
      intitulewallet: json['intitulewallet'],
      soldewallet: json['soldewallet'],
      statutwallet: json['statutwallet'],
      codeclient: json['codeclient'],
      codeutilis: json['codeutilis'],
    );
  }

  Map<String, dynamic> toJson() => {
        'codewallet': codewallet,
        'intitulewallet': intitulewallet,
        'soldewallet': soldewallet,
        'statutwallet': statutwallet,
        'codeclient': codeclient,
        'codeutilis': codeutilis,
      };
}


// class Model {
  
//   int? code;
//   bool? head;
//   int? type;

//   Body? body;
//   Body1? body1;
//   Model({
//     this.code,
//     this.head,
//     this.type,
//     this.body,
//     this.body1,
//   });

//   factory Model.fromJson(Map<String, dynamic> json) {
//     bool? state = json['head'];
//     return Model(
//         code: json['code'],
//         head: json['head'],
//         type: json['type'],
//         body: state == false ? Body.fromJson(json['body']) : null,
//         body1: state == true ? null : Body1.fromJson(json['body'])  ,
//         );
//   }



//   Map<String, dynamic> tojson() => {
//         'code': code,
//         'head': head,
//         'type': type,
//         'body': body,
//         'body1': body1,
//       };
// }

// class Body {
//   Connexion? connexion;
//   Client? client;
//   Wallet? wallet;
//   Body({
//     this.connexion,
//     this.client,
//     this.wallet,
//   });

//   factory Body.fromJson(Map<String, dynamic> json) {
//     return Body(
//       connexion: Connexion.fromJson(json['connexion']),
//       client: Client.fromJson(json['client']),
//       wallet: Wallet.fromJson(json['wallet']),
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'connexion': connexion,
//         'client': client,
//         'wallet': wallet,
//       };
// }

// class Body1 {
//   String? msg;

//   Body1({
//     this.msg,
//   });

//   factory Body1.fromJson(Map<String, dynamic> json) {
//     return Body1(
//       msg: json['msg'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'msg': msg,
//       };
// }

// class Connexion {
//   String? codeconn;
//   String? datedebconn;
//   String? datefinconn;
//   String? nomtermconn;
//   String? adripconn;
//   String? adrmaconn;
//   String? statutconn;
//   String? codecompte;
//   String? nomcompte;
//   String? logincompte;
//   String? statutcompte;
//   String? codesptrav;
//   String? nomesptrav;
//   String? lienesptrav;
//   String? libesptrav;

//   Connexion(
//       {this.codeconn,
//       this.datedebconn,
//       this.datefinconn,
//       this.nomtermconn,
//       this.adripconn,
//       this.adrmaconn,
//       this.statutconn,
//       this.codecompte,
//       this.nomcompte,
//       this.logincompte,
//       this.statutcompte,
//       this.codesptrav,
//       this.nomesptrav,
//       this.lienesptrav,
//       this.libesptrav});

//   factory Connexion.fromJson(Map<String, dynamic> json) {
//     return Connexion(
//       codeconn: json['codeconn'],
//       datedebconn: json['datedebconn'],
//       datefinconn: json['datefinconn'],
//       nomtermconn: json['nomtermconn'],
//       adripconn: json['adripconn'],
//       adrmaconn: json['adrmaconn'],
//       statutconn: json['statutconn'],
//       codecompte: json['codecompte'],
//       nomcompte: json['nomcompte'],
//       logincompte: json['logincompte'],
//       statutcompte: json['statutcompte'],
//       codesptrav: json['codesptrav'],
//       nomesptrav: json['nomesptrav'],
//       lienesptrav: json['lienesptrav'],
//       libesptrav: json['libesptrav'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'codeconn': codeconn,
//         'datedebconn': datedebconn,
//         'datefinconn': datefinconn,
//         'nomtermconn': nomtermconn,
//         'adripconn': adripconn,
//         'adrmaconn': adrmaconn,
//         'statutconn': statutconn,
//         'codecompte': codecompte,
//         'nomcompte': nomcompte,
//         'logincompte': logincompte,
//         'statutcompte': statutcompte,
//         'codesptrav': codesptrav,
//         'nomesptrav': nomesptrav,
//         'lienesptrav': lienesptrav,
//         'libesptrav': libesptrav,
//       };
// }

// class Client {
//   String? codeclient;
//   String? codeutilis;
//   String? nomsutilis;
//   String? prenomsutilis;
//   String? numtelutilis;
//   String? emailutilis;
//   String? codenreg;
//   String? codecompte;
//   String? nomcompte;
//   String? logincompte;
//   String? statutcompte;

//   Client({
//     this.codeclient,
//     this.codeutilis,
//     this.nomsutilis,
//     this.prenomsutilis,
//     this.numtelutilis,
//     this.emailutilis,
//     this.codenreg,
//     this.codecompte,
//     this.nomcompte,
//     this.logincompte,
//     this.statutcompte,
//   });

//   factory Client.fromJson(Map<String, dynamic> json) {
//     return Client(
//       codeclient: json['codeclient'],
//       codeutilis: json['codeutilis'],
//       nomsutilis: json['nomsutilis'],
//       prenomsutilis: json['prenomsutilis'],
//       numtelutilis: json['numtelutilis'],
//       emailutilis: json['emailutilis'],
//       codenreg: json['codenreg'],
//       codecompte: json['codecompte'],
//       nomcompte: json['nomcompte'],
//       logincompte: json['logincompte'],
//       statutcompte: json['statutcompte'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'codeclient': codeclient,
//         'codeutilis': codeutilis,
//         'nomsutilis': nomsutilis,
//         'prenomsutilis': prenomsutilis,
//         'numtelutilis': numtelutilis,
//         'emailutilis': emailutilis,
//         'codenreg': codenreg,
//         'codecompte': codecompte,
//         'nomcompte': nomcompte,
//         'logincompte': logincompte,
//         'statutcompte': statutcompte,
//       };
// }

// class Wallet {
//   String? codewallet;
//   String? intitulewallet;
//   String? soldewallet;
//   String? statutwallet;
//   String? codeclient;
//   String? codeutilis;

//   Wallet({
//     this.codewallet,
//     this.intitulewallet,
//     this.soldewallet,
//     this.statutwallet,
//     this.codeclient,
//     this.codeutilis,
//   });

//   factory Wallet.fromJson(Map<String, dynamic> json) {
//     return Wallet(
//       codewallet: json['codewallet'],
//       intitulewallet: json['intitulewallet'],
//       soldewallet: json['soldewallet'],
//       statutwallet: json['statutwallet'],
//       codeclient: json['codeclient'],
//       codeutilis: json['codeutilis'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'codewallet': codewallet,
//         'intitulewallet': intitulewallet,
//         'soldewallet': soldewallet,
//         'statutwallet': statutwallet,
//         'codeclient': codeclient,
//         'codeutilis': codeutilis,
//       };
// }