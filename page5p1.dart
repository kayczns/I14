import 'package:flutter/material.dart';

class Page5p1 extends StatelessWidget {
  Page5p1({super.key});
  var txtbold = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  var txtBold2 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  buttonActions(
    iconVal,
    txtButton,
  ) =>
      TextButton.icon(
        onPressed: () {},
        icon: Icon(iconVal, color: Colors.grey),
        label: Text(
          txtButton,
          style: TextStyle(color: Colors.grey),
        ),
      );

  postList(
    profpic,
    profname,
    time,
    description,
    postimg,
    numcomments,
    numshares,
  ) =>
      Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    profpic,
                  ),
                  radius: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profname,
                      style: txtbold,
                    ),
                    Row(
                      children: [
                        Text(
                          time,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.group,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              description,
              style: txtBold2,
            ),
            Image.asset(postimg),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('$numcomments comments . $numshares Shares'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonActions(Icons.thumb_up, 'Like'),
                buttonActions(Icons.chat_bubble, 'Comment'),
                buttonActions(Icons.forward, 'Share'),
              ],
            ),
            Divider(),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
          ),
        ),
        body: ListView(
          children: [
            Center(
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
                        'assets/prof.jpg',
                      ),
                      radius: 55,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Kayle Audrey Cazenas',
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
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '100k',
                        style: txtBold2,
                      ),
                      Text(
                        '2.3k',
                        style: txtBold2,
                      ),
                      Text(
                        '1',
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
                        'assets/angel.jpg',
                        height: 120,
                        width: 120,
                      ),
                      Image.asset(
                        'assets/anne.jpg',
                        height: 120,
                        width: 120,
                      ),
                      Image.asset(
                        'assets/kath.jpg',
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
                        'Angel Locsin',
                        style: txtbold,
                      ),
                      Text(
                        'Anne Curtis',
                        style: txtbold,
                      ),
                      Text(
                        'Kath Bernardo',
                        style: txtbold,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/kam.jpg',
                        height: 120,
                        width: 120,
                      ),
                      Image.asset(
                        'assets/maja.jpg',
                        height: 120,
                        width: 120,
                      ),
                      Image.asset(
                        'assets/marian.jpg',
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
                        'Kim Chiu',
                        style: txtbold,
                      ),
                      Text(
                        'Maja Salvador',
                        style: txtbold,
                      ),
                      Text(
                        'Marian Rivera',
                        style: txtbold,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          'Posts',
                          style: txtbold,
                        ),
                      ],
                    ),
                  ),
                  postList(
                      'assets/prof.jpg',
                      'Kayle Audrey Cazenas',
                      '2 mins ago',
                      'Happy Sunday!!!',
                      'assets/sunday.jpg',
                      '33',
                      '12'),
                  postList(
                      'assets/kam.jpg',
                      'Kim Chiu',
                      '1 min ago',
                      'Meet my friend, Maja Salvador!!',
                      'assets/maja.jpg',
                      '156',
                      '58'),
                  postList(
                      'assets/prof.jpg',
                      'Kayle Audrey Cazenas',
                      '1 min ago',
                      'UGLIIIII DOG',
                      'assets/tiger.jpg',
                      '599k',
                      '1m'),
                ],
              ),
            ),
          ],
        ));
  }
}
