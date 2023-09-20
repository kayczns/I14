class Comment {
  final String profImg;
  final String profName;
  final String profComment;
  final String commentTime;
  final String commentLike;
  final String commentReply;
  bool isLiked;

  Comment({
    required this.profImg,
    required this.profName,
    required this.profComment,
    required this.commentTime,
    required this.commentLike,
    required this.commentReply,
    required this.isLiked,
  });
}
