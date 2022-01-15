import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Services {
  Services() {}
  Map<String, String>? headerProd = {
    "api-key": "2C6F6770E4D04C86560EAB75CCE7C856A59D0407",
    "cctr-no": "app_store",
    'Content-Type': 'application/json'
  };

  Future<dynamic> post(String url, String body) async {
    dynamic responseJson;
    try {
      final response =
          await http.post(Uri.parse(url), headers: headerProd, body: body);
      return responseJson = returnResponse(response);
    } on SocketException {
      print("No Internet Connection");
    }
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      default:
        print("response false: " + response.body.toString());
        break;
    }
  }
}
