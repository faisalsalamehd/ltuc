import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ltuc/data/api/api_client.dart';
import 'package:ltuc/data/api/api_string.dart';
import 'package:ltuc/model/shein_model.dart';

class WelcomeRepo {
  static Future<SheInModel> fetchData() async {
    SheInModel sheInModel = SheInModel();
    http.Response response = await ApiClient.post(
      url: ApiString.getSection,
      body: {},
      withAuth: false,
    );

    if (response.statusCode == 200) {
      sheInModel = SheInModel.fromJson(jsonDecode(response.body));
    }
    if (response.statusCode == 404) {
      print("404");
    }
    return sheInModel;
    //100 - 199 : informational
    //200 - 299 : success
    //300 - 399 : redirect
    //400 - 499 : client error
    //500 - 599 : server error
  }
}
