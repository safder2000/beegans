import 'package:beegains_mech_test/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sections'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Text(
              'Welcome....!!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome to showroom Capture,Let's Explore...",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.shop,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {},
              label: Text('Sales'),
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.logout_outlined,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage()));
              },
              label: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
