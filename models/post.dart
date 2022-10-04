import 'package:instaui/models/user.dart';

class Post {
  final String id;
  final User postedBy;
  final String imageUrl;
  final String title;
  final String location;
  final String postedTimeAgo;
  final String caption;
  final String likes;
  final String comments;
  final bool isLiked;
  final bool isBookmarked;

  Post(
      this.id,
      this.postedBy,
      this.imageUrl,
      this.title,
      this.location,
      this.postedTimeAgo,
      this.caption,
      this.likes,
      this.comments,
      this.isLiked,
      this.isBookmarked);
}
