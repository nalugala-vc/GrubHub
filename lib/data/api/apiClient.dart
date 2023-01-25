import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    token="";
    _mainHeaders = {
      'Content-type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
    timeout =
        Duration(seconds: 30); //How long to try and get data from the server
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}
