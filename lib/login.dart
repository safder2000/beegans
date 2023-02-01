import 'package:dio/dio.dart';
// Dio dio = new Dio();
// // dio.options.headers["Authorization"] = "Bearer ${token}";
// response = await dio.post(url, data: data);

void getHttp() async {
  var dio = Dio();
  try {
    // var response = await Dio().get('http://www.google.com');
    var response = await dio.post('/test', data: {'id': 12, 'name': 'wendu'});
    print(response);
  } catch (e) {
    print(e);
  }
}
