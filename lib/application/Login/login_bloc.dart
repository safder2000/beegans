import 'package:beegains_mech_test/logic/fetch_login.dart';
import 'package:beegains_mech_test/presentation/home_page.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<Login>((event, emit) {
      if (event.name == 'test' && event.pass == 'test') {
        loginHttp(Password: 'test', username: 'test');
        Navigator.pushReplacement(
          event.context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    });
  }
}
