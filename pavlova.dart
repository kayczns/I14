import 'package:flutter/material.dart';

class pavlova extends StatelessWidget {
  pavlova({super.key});

  String description =
      'Pavlova is a meringue-based dessert named after the Russian ballerina'
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream';

  buildColumn() => Column(
        children: [
          Image.asset('assets/pavlova.jpeg'),
          const SizedBox(height: 10),
          const Text(
            'Strawberry Pavlova',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.all(15),
            child: Text(
              description,
              style: const TextStyle(fontSize: 19),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      );

  buildIconTab(iconval, title, time) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconval, color: Colors.green),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            time,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );

  buildRowTabs() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildIconTab(Icons.kitchen, 'PREP', '25 min'),
          buildIconTab(Icons.timer, 'COOK', '1 hr'),
          buildIconTab(Icons.restaurant, 'FEEDS', '4-6'),
        ],
      );
  buildStar(int rating, numreviews) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 1; i <= rating; i++)
            const Icon(
              Icons.star,
              color: Colors.green,
              size: 24,
            ),
          for (int i = 1; i <= 5 - rating; i++)
            const Icon(
              Icons.star,
              size: 24,
            ),
          const SizedBox(
            width: 20,
          ),
          Text(
            '$numreviews reviews',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pavlova'),
      ),
      body: Center(
        child: ListView(
          children: [
            buildColumn(),
            buildStar(2, 90),
            SizedBox(
              height: 20,
            ),
            buildRowTabs(),
          ],
        ),
      ),
    );
  }
}
