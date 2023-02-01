import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BikeDisplay extends StatelessWidget {
  const BikeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bike Display'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Icon(Icons.home),
            )
          ],
        ),
        body: ListView(children: [BikeCard()]));
  }
}

class BikeCard extends StatelessWidget {
  const BikeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.92,
            decoration: BoxDecoration(
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
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            margin: EdgeInsets.only(right: 8, top: 8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.news18.com/ibnlive/uploads/2022/06/tesla-cybertruck-bike.jpg',
                    ),
                    radius: 50,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TIR',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Bike Display',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Wednesday,February 1st, 2023, 9:22:55',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
