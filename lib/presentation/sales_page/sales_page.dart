import 'package:beegains_mech_test/application/sales/sales_bloc.dart';
import 'package:beegains_mech_test/presentation/login_page.dart';
import 'package:beegains_mech_test/presentation/sales_page/daily_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

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
              'Our Sales',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://thumbs.dreamstime.com/b/business-man-showing-statistical-data-report-suit-glasses-economic-clipboard-full-length-portrait-office-worker-91590437.jpg'))),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<SalesBloc>(context).add(FetchSales());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DailyPage()));
              },
              child: Text('Daily'),
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<SalesBloc>(context).add(FetchSales());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DailyPage()));
              },
              child: Text('Weekly'),
            )
          ],
        ),
      ),
    );
  }
}
