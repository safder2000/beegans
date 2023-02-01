part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class Login extends LoginEvent{
  Login({required this.name,required this.pass,required this.context});
  String name;
  String pass;
  var context;

}
