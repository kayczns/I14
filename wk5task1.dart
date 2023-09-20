import 'package:flutter/material.dart';

import 'package:flutter_application_1/comments.dart';
import 'package:flutter_application_1/post.dart';

class wk5task1 extends StatefulWidget {
  const wk5task1({super.key, required this.post});
  final Post post;

  @override
  State<wk5task1> createState() => _w5task1profileView();
}

class _w5task1profileView extends State<wk5task1> {
  //CALL COMMENT LIST

  TextEditingController commentController = TextEditingController();

  commentShareButton(iconButton, labelButton) => TextButton.icon(
        onPressed: () {},
        icon: Icon(
          iconButton,
          size: 20,
          color: Colors.grey,
        ),
        label: Text(
          labelButton,
          style: const TextStyle(color: Colors.grey),
        ),
      );
  likeButton(iconButton, labelButton, Post post) => TextButton.icon(
        onPressed: () {
          setState(() {
            post.isLiked = (post.isLiked) ? false : true;
          });
        },
        icon: Icon(
          iconButton,
          size: 20,
          color: (post.isLiked) ? Colors.blue : Colors.grey,
        ),
        label: Text(
          labelButton,
          style: TextStyle(color: (post.isLiked) ? Colors.blue : Colors.grey),
        ),
      );

  postList(Post post) => Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                    Row(
                      children: [
                        Text(
                          post.profName,
                          style: textBL,
                        ),
                        const SizedBox(width: 90),
                      ],
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
                          Icons.people,
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
              style: textBL,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              post.postImg,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '${post.postComments} comments. ',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      Text(
                        '${post.postShares} shares',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                likeButton(Icons.thumb_up, 'Like', post),
                commentShareButton(Icons.chat_bubble, 'Comment'),
                commentShareButton(Icons.forward, 'Share'),
              ],
            ),
            const Divider(
              height: 0,
            ),
          ],
        ),
      );

  Comment comment1 = Comment(
    profImg: 'assets/kim.jpg',
    profName: 'Kim Chiu',
    profComment: 'Amazing!',
    commentTime: '1s',
    commentLike: 'Like',
    commentReply: 'Reply',
    isLiked: false,
  );
  Comment comment2 = Comment(
    profImg: 'assets/kim.jpg',
    profName: 'Kim Chiu',
    profComment: 'Wonderful!',
    commentTime: '1s',
    commentLike: 'Like',
    commentReply: 'Reply',
    isLiked: false,
  );
  Comment comment3 = Comment(
    profImg: 'assets/kim.jpg',
    profName: 'Kim Chiu',
    profComment: 'WOW!',
    commentTime: '1s',
    commentLike: 'Like',
    commentReply: 'Reply',
    isLiked: false,
  );
  Comment comment4 = Comment(
    profImg: 'assets/kim.jpg',
    profName: 'Kim Chiu',
    profComment: ':D',
    commentTime: '1s',
    commentLike: 'Like',
    commentReply: 'Reply',
    isLiked: false,
  );
  Comment comment5 = Comment(
    profImg: 'assets/kim.jpg',
    profName: 'Kim Chiu',
    profComment: 'yummy!',
    commentTime: '1s',
    commentLike: 'Like',
    commentReply: 'Reply',
    isLiked: false,
  );

  commentList(Comment comments) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 23,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(comments.profImg),
                    radius: 23,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, top: 5, bottom: 10, right: 45),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(240, 242, 245, 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comments.profName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        comments.profComment,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 72),
                Text('1m'),
                TextButton(
                  onPressed: () {
                    setState(() {
                      comments.isLiked = (comments.isLiked) ? false : true;
                    });
                  },
                  child: Text(
                    comments.commentLike,
                    style: TextStyle(
                        color: (comments.isLiked) ? Colors.blue : Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    comments.commentReply,
                    style: const TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile View'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          postList(widget.post),
          commentList(comment1),
          commentList(comment2),
          commentList(comment3),
          commentList(comment4),
          commentList(comment1),
        ],
      ),
    );
  }
}
