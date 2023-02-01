import 'package:beegains_mech_test/presentation/sales_page/widgets/tile_time.dart';
import 'package:flutter/material.dart';

class DailyTile extends StatelessWidget {
  DailyTile({
    required this.fromTime,
    required this.toTime,
    required this.areaName,
    Key? key,
  }) : super(key: key);
  String fromTime;
  String toTime;
  String areaName;
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 0,
        decoration: const BoxDecoration(
          color: Color(0xFFffffff),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 5  horizontally
                5.0, // Move to bottom 5 Vertically
              ),
            )
          ],
        ),
        child: Column(
          children: [
            FristRow(),
            SecondRow(
              fromTime: fromTime,
              toTime: toTime,
              areaName: areaName,
            ),
          ],
        ));
  }
}

class SecondRow extends StatelessWidget {
  SecondRow({
    required this.fromTime,
    required this.toTime,
    required this.areaName,
    Key? key,
  }) : super(key: key);
  String fromTime;
  String toTime;
  String areaName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
        ),
        Text(
          '$areaName',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        TimeTile(
          endTime: toTime,
          startTime: fromTime,
        )
      ],
    );
  }
}

class FristRow extends StatelessWidget {
  const FristRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Multiple Image',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 28,
          ),
        )
      ],
    );
  }
}
