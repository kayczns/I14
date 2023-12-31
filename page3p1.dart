import 'package:flutter/material.dart';

class Page3p1 extends StatelessWidget {
  const Page3p1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page3.1')),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 150,
              left: 20,
            ),
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 350,
            height: 150,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 160,
              left: 30,
            ),
            width: 330,
            height: 130,
            color: Colors.orange,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 180,
              left: 45,
            ),
            child: Image.asset(
              'assets/ivana.jpg',
              width: 80,
              height: 80,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 150, top: 200),
            child: const Column(
              children: [
                Text(
                  'Kayle Audrey P. Cazenas',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text('k.cazenas.523866@umindanao.edu.ph',
                    style: TextStyle(fontSize: 12))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
