import 'package:beegains_mech_test/models/login_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

loginHttp({required String username, required String Password}) async {
  var dio = Dio();
  try {
    var response = await dio.post('http://134.209.157.220:1000/Users/Login',
        data: {"User_Name": "test", "Password": "test"} /*  */
        );
// final responseAsList = (response.data as List).map((e) {
//     return LoginRequest.fromJson(e);
//   }).toList();
    final responseAsList = LoginRequest.fromJson(response.data);
    saveData(responseAsList);

    return responseAsList;
  } catch (e) {
    print(e);
  }
}

saveData(LoginRequest data) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('login', true);
  prefs.setString('token', '${data.token}');
  prefs.setString('sectionId', '${data.sectionId!.sId}');
  prefs.setString('branchId', '${data.branchId}');
  prefs.setString('id', '${data.sId}');
}
