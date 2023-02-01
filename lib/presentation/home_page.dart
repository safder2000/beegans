import 'package:beegains_mech_test/application/sales/sales_bloc.dart';
import 'package:beegains_mech_test/presentation/login_page.dart';
import 'package:beegains_mech_test/presentation/sales_page/daily_page.dart';
import 'package:beegains_mech_test/presentation/sales_page/sales_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SalesPage()));
              },
              label: Text('Sales'),
            ),
            ElevatedButton.icon(
              icon: Icon(
                Icons.logout_outlined,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                BlocProvider.of<SalesBloc>(context).add(FetchSales());
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
