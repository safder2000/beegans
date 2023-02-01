import 'package:flutter/material.dart';

class TimeTile extends StatelessWidget {
  TimeTile({
    required this.startTime,
    required this.endTime,
    Key? key,
  }) : super(key: key);
  String startTime;
  String endTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(
            Radius.circular(5.0) //                 <--- border radius here
            ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          '$startTime  to $endTime ',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
    );
  }
}
