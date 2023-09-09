class Post {
  final String profImg;
  final String profName;
  final String postTime;
  final String profDesc;
  final String postImg;
  final int postComments;
  final int postShares;
  bool isLiked = false;

  Post({
    required this.profImg,
    required this.profName,
    required this.postTime,
    required this.profDesc,
    required this.postImg,
    required this.postComments,
    required this.postShares,
    
  })
}
