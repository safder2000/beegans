import 'dart:developer';

import 'package:beegains_mech_test/logic/fetch_sales.dart';
import 'package:beegains_mech_test/presentation/bike_display/bike_display.dart';
import 'package:beegains_mech_test/presentation/sales_page/widgets/tile_daily.dart';
import 'package:flutter/material.dart';

class DailyPage extends StatelessWidget {
  const DailyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BikeDisplay()));
              },
              child: DailyTile(
                fromTime: '6:00 PM',
                toTime: '8:00 PM',
                areaName: 'Waste Management',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
