import 'package:flutter/material.dart';
import 'package:flutter_application_1/post.dart';
import 'package:flutter_application_1/wk5task1.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _week5task1profileState();
}

class _week5task1profileState extends State<profile> {
  var textBL = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  var textBold = const TextStyle(
    fontWeight: FontWeight.bold,
  );
  var numbersBold = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  var font14 = const TextStyle(
    fontSize: 14,
  );
  Post post1 = Post(
    profImg: 'assets/mona.jpg',
    profName: 'Kayle Audrey Cazenas',
    postTime: '30 days ago',
    postDesc: "Time for coffee!",
    postImg: 'assets/coffee.jpg',
    postReaction: Icons.thumb_up,
    postColor: Colors.blue,
    postComments: '5',
    postShares: '1',
    isLiked: false,
  );
  Post post2 = Post(
    profImg: 'assets/mona.jpg',
    profName: 'Kayle Audrey Cazenas',
    postTime: '13 hours ago.',
    postDesc: "I love my Dog :D",
    postImg: 'assets/dog.jpg',
    postReaction: Icons.thumb_up,
    postColor: Colors.blue,
    postComments: '2',
    postShares: '1',
    isLiked: false,
  );
  Post post3 = Post(
    profImg: 'assets/mona.jpg',
    profName: 'Kayle Audrey Cazenas',
    postTime: 'a day ago.',
    postDesc: "Smells Good!.",
    postImg: 'assets/flowerz.jpg',
    postReaction: Icons.thumb_up,
    postColor: Colors.blue,
    postComments: '6',
    postShares: '3',
    isLiked: false,
  );
  Post post4 = Post(
    profImg: 'assets/mona.jpg',
    profName: 'Kayle Audrey Cazenas',
    postTime: '5h.',
    postDesc: "Yummy Pavlova!!",
    postImg: 'assets/pavlova.jpeg',
    postReaction: Icons.thumb_up,
    postColor: Colors.blue,
    postComments: '5',
    postShares: '2',
    isLiked: false,
  );
  Post post5 = Post(
    profImg: 'assets/mona.jpg',
    profName: 'Kayle Audrey Cazenas',
    postTime: '4 days ago',
    postDesc: "This is my friend, Mia.",
    postImg: 'assets/mia.jpg',
    postReaction: Icons.thumb_up,
    postColor: Colors.blue,
    postComments: '3',
    postShares: '1',
    isLiked: false,
  );

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
  actionButtons(iconButton, labelButton, Post post) => TextButton.icon(
        onPressed: () {
          setState(() {
            post.isLiked = (post.isLiked) ? false : true;
          });
        },
        icon: Icon(
          iconButton,
          color: (post.isLiked && iconButton == Icons.thumb_up)
              ? Colors.blue
              : Colors.grey,
        ),
        label: Text(
          labelButton,
          style: TextStyle(
              color: (post.isLiked && iconButton == Icons.thumb_up)
                  ? Colors.blue
                  : Colors.grey),
        ),
      );

  postList(Post post) => Container(
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
                      post.profImg,
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
                      post.profName,
                      style: textBold,
                    ),
                    Row(
                      children: [
                        Text(
                          post.postTime,
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
              post.postDesc,
              style: textBold,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              post.postImg,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${post.postComments} comments. ',
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
                Text(
                  '${post.postShares} shares',
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                actionButtons(Icons.thumb_up, 'Like', post),
                actionButtons(Icons.chat_bubble, 'Comment', post),
                actionButtons(Icons.forward, 'Share', post),
              ],
            ),
            const Divider(),
          ],
        ),
      );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 15),
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 45,
                  child: CircleAvatar(
                    radius: 43,
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
                          '1m',
                          style: textBold,
                        ),
                        Text('Follwers'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '312',
                          style: textBold,
                        ),
                        Text('Posts'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '421',
                          style: textBold,
                        ),
                        Text('Following'),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, right: 2),
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 230, 228, 228),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Edit profile',
                        style: font14,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 2),
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 228, 228),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Add friends',
                        style: font14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 11, top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        'Friends',
                        style: textBL,
                      ),
                    ],
                  ),
                ),

                //FRIENDS LIST
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
                //FRIENDS LIST

                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: Row(
                    children: [
                      Text(
                        'Posts',
                        style: textBL,
                      ),
                    ],
                  ),
                ),

                //POSTS LIST
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => wk5task1(post: post1),
                      ),
                    );
                  },
                  child: postList(post1),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => wk5task1(post: post2),
                      ),
                    );
                  },
                  child: postList(post2),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => wk5task1(post: post3),
                      ),
                    );
                  },
                  child: postList(post3),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => wk5task1(post: post4),
                      ),
                    );
                  },
                  child: postList(post4),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => wk5task1(post: post5),
                      ),
                    );
                  },
                  child: postList(post5),
                ),

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
