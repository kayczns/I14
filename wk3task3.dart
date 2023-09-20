import 'package:flutter/material.dart';

class wk3task3 extends StatelessWidget {
  wk3task3({super.key});

  friendsSection(profilePic, name) => Card(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Image.asset(
                profilePic,
                width: 100,
                height: 110,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                name,
                style: textBold,
              ),
            )
          ],
        ),
      );
  actionButtons(buttonIcon, buttonLabel) => TextButton.icon(
        onPressed: () {},
        icon: Icon(
          buttonIcon,
          color: Colors.grey,
        ),
        label: Text(
          buttonLabel,
          style: const TextStyle(color: Colors.grey),
        ),
      );
  postList(profilePic, name, time, postDescription, postImage, numComments,
          numShares) =>
      Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 26,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      profilePic,
                    ),
                    radius: 25,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: textBold,
                    ),
                    Row(
                      children: [
                        Text(
                          time,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.group,
                          size: 18,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              postDescription,
              style: textBold,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              postImage,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('$numComments comments.'),
                const SizedBox(
                  width: 5,
                ),
                Text('$numShares shares'),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                actionButtons(Icons.thumb_up, 'Like'),
                actionButtons(Icons.comment, 'Comment'),
                actionButtons(Icons.forward, 'Share'),
              ],
            ),
            const Divider(),
          ],
        ),
      );

  var textBold = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  var boldNumbers = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 20),
            Column(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 45,
                  child: CircleAvatar(
                    radius: 42,
                    backgroundImage: AssetImage(
                      'assets/mona.jpg',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Kayle Audrey Cazenas',
                  style: textBold,
                ),
                const Text(
                  'k.cazenas.523866@umindanao.edu.ph',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          '512k',
                          style: boldNumbers,
                        ),
                        Text('Follwers'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '312',
                          style: boldNumbers,
                        ),
                        Text('Posts'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '421',
                          style: boldNumbers,
                        ),
                        Text('Following'),
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                const Divider(),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text(
                        'Friends',
                        style: textBold,
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    friendsSection('assets/andrea.jpg', 'Andrea Brillantes'),
                    friendsSection('assets/angel.jpg', 'Angel Locsin'),
                    friendsSection('assets/anne.jpg', 'Anne Curtis'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    friendsSection('assets/ivana.jpg', 'Ivana Alawi'),
                    friendsSection('assets/kath.jpg', 'Kathryn Bernardo'),
                    friendsSection('assets/kim.jpg', 'Kim Chiu'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    friendsSection('assets/liza.jpg', 'Liza Soberano'),
                    friendsSection('assets/marian.jpg', 'Marian Rivera'),
                    friendsSection('assets/bea.jpg', 'Bea Alonzo'),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                const Divider(),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: Row(
                    children: [
                      Text(
                        'Posts',
                        style: textBold,
                      ),
                    ],
                  ),
                ),

                postList(
                    'assets/mona.jpg',
                    'Kayle Audrey Cazenas',
                    '30 mins ago.',
                    "I love my Dog!!!",
                    'assets/dog.jpg',
                    '24',
                    '1'),
                postList(
                    'assets/mona.jpg',
                    'Kayle Audrey Cazenas',
                    '13 hours ago.',
                    "Coffee for today :)",
                    'assets/coffee.jpg',
                    '2',
                    '1'),
                postList(
                    'assets/mona.jpg',
                    'Kayle Audrey Cazenas',
                    'a day ago.',
                    "Smells Good!.",
                    'assets/flowerz.jpg',
                    '6',
                    '3'),
                //POSTS LIST

                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
