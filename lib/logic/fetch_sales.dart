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
      'http://134.209.157.220:1000/AreaBranchMapper/GetByBranchSectionAndReportTime/';
  var payload = {
    "Report_Time_Type": 1,
    "Branch_Id": "$Branch_Id",
    "Section_Id": "$Section_Id",
    "user_id": "$user_id"
  };
  // log(tocken.toString());
  var dio = Dio();

  try {
    // dio.options.headers['content-Type'] = 'application/json';
    // dio.options.headers["authorization"] = token;
    var response = await dio.post(url, data: payload);
    final responseAsList = SalesRequest.fromJson(response.data);
    log(response.toString());

    return response;
  } catch (e) {
    print(e);
  }
}
