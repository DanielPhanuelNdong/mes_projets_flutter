// //import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:learn_api/features/test/data/models/model.dart';

class depot {
  connexions? Connexions = connexions();
  depot({
    this.Connexions,
  });

  Future<void> log(var coll) async {
    var dio = Dio();
    //final prefs = await SharedPreferences.getInstance();
    try
    {
      var formData = FormData.fromMap(coll);
      Response response = await dio.post("https://metierangarapay.bsiges.com/isecurite.php", data: formData);
      if (response.statusCode == 200)
      {
        Connexions = connexions.fromJson(Map<String, dynamic>.from(response.data));
        if(Connexions!.body != null)
        {
          //prefs.setString('conn', Connexions!.body!.connexion!.codeconn!);
          //notifyListeners();
        }
      }
    // ignore: deprecated_member_use
    } on DioError
    catch (e)
    {
      print(e);
      // if (e.error is SocketException || e.type == DioErrorType.other) {
      //   rethrow;
      // }
      // ignore: deprecated_member_use
      if (e.type == DioErrorType.badResponse) {
        return null;
      }
    }
    //return null;
  }

}

// import 'package:dart_ipify/dart_ipify.dart';
// import 'package:dio/dio.dart';
// import 'package:learn_api/features/index.dart';

// class Repository {
//   Model model = Model();

//   Future<void> replog(var login, var mdp) async {
//     var dio = Dio();

//     Map<String, dynamic> collection = {
//       'codeserv': 'seconnecter',
//       'profil': 'client',
//       'login': login,
//       'mdp': mdp,
//       'term': 'Lenovo android',
//       'adrip': '10.0.0.1'
//     };

//     final String ipv4 = await Ipify.ipv4();
//     collection['adrip'] = ipv4;

//     try {

    

//     FormData formdata = FormData.fromMap(collection);
//     Response response = await dio.post(
//         "https://metierangarapay.bsiges.com/isecurite.php",
//         data: formdata);

//     //var prov = provider;
//     //if(provider != null){
//       //final response = await provider.log(collection);
    

//     if (response.statusCode == 200) {
      
//         model = Model.fromJson(Map<String, dynamic>.from(response.data));
        
      
//     }
//     //return model ;

//     // ignore: deprecated_member_use
//     } on DioError
//     catch (e) {
//         print(e);
//         // if(e.type == DioExceptionType.badResponse){
//         //   return ;
//         // }
//       }
//     //return null;
//   }
    
//   }
// //}
