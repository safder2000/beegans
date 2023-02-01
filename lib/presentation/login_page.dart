import 'package:beegains_mech_test/application/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: ListView(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
              controller: nameController,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              controller: passwordController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context).add(Login(
                        name: '${nameController.text}',
                        pass: '${passwordController.text}',
                        context: context));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
