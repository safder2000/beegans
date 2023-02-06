import 'dart:developer';

import 'package:beegains_mech_test/models/login_model.dart';
import 'package:beegains_mech_test/models/salesModel.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

fetchSales(

    // {required String username, required String Password}
    ) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var Branch_Id = prefs.getString('branchId');
  var Section_Id = prefs.getString('sectionId');
  var user_id = prefs.getString('id');
  var token = prefs.getString('id');
  String url =
      'http://134.209.157.220:1000/image/listByBranchSectionAndReportTime/';
  var auth = {
    "Authorization": "$token",
  };
  var payload = {
    "branchId": "5dbd727d46c214298f85e2a8",
    "sectionId": "5dc1097546c214298f85e2ae",
    "reportTimeType": "1",
    "areaId": "5dc11c4046c214298f85e2d0"
  };
  // log(tocken.toString());
  var dio = Dio();

  try {
    // dio.options.headers['content-Type'] = 'application/json';
    dio.options.headers["authorization"] = auth;
    var response = await dio.post(url, data: payload);
    final responseAsList = SalesRequest.fromJson(response.data);
    log(response.toString());

    return response;
  } catch (e) {
    print(e);
  }
}
