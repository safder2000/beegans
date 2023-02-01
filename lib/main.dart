import 'package:beegains_mech_test/application/login/login_bloc.dart';
import 'package:beegains_mech_test/application/sales/sales_bloc.dart';
import 'package:beegains_mech_test/presentation/home_page.dart';
import 'package:beegains_mech_test/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var isLogin = prefs.getBool('login');

  runApp(
    MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (BuildContext context) => LoginBloc(),
          ),
          BlocProvider<SalesBloc>(
            create: (BuildContext context) => SalesBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: isLogin != true ? LoginPage() : HomePage(),
        ),
      ),
    ),
  );
}
