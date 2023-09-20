class Post {
  final String profImg;
  final String profName;
  final String postTime;
  final String postDesc;
  final String postImg;
  final dynamic postReaction;
  final dynamic postColor;
  final dynamic postComments;
  final dynamic postShares;
  bool isLiked;

  Post({
    required this.profImg,
    required this.profName,
    required this.postTime,
    required this.postDesc,
    required this.postImg,
    required this.postReaction,
    required this.postColor,
    required this.postComments,
    required this.postShares,
    required this.isLiked,
  });
}
