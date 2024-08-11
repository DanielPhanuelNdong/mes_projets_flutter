import 'package:dio/dio.dart';

class DataProvider {

  Future<Response> log(var coll) async {
    var dio = Dio();
    FormData formdata = FormData.fromMap(coll);
    Response response = await dio.post(
        "https://metierangarapay.bsiges.com/isecurite.php",
        data: formdata);

    return response;
  }
}
