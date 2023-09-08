import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Page5 extends StatelessWidget {
  Page5({super.key});
  var txtbold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  var txtBold2 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 199, 222, 26),
                radius: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/ivana.jpg',
                  ),
                  radius: 55,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'Kayle Audrey P. Cazenas',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'k.cazenas.523866@umindanao.edu.ph',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Followers',
                    style: txtbold,
                  ),
                  Text(
                    'Post',
                    style: txtbold,
                  ),
                  Text(
                    'Following',
                    style: txtbold,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '100k',
                    style: txtBold2,
                  ),
                  Text(
                    '12k',
                    style: txtBold2,
                  ),
                  Text(
                    '500',
                    style: txtBold2,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Divider(),
              const Row(children: [
                Text(
                  '   Friends',
                  style: TextStyle(fontSize: 20),
                ),
              ]),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/mona.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/fem1.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/fem2.jpg',
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Mona Alawi',
                    style: txtbold,
                  ),
                  Text(
                    'Angelica Dayanghirang',
                    style: txtbold,
                  ),
                  Text(
                    'Mae Lara',
                    style: txtbold,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/fem3.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/fem4.jpg',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/fem5.jpg',
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Peachy Galing',
                    style: txtbold,
                  ),
                  Text(
                    'Gail Villegas',
                    style: txtbold,
                  ),
                  Text(
                    'Kyle Hingpit',
                    style: txtbold,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
