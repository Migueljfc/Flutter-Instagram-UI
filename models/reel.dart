import 'package:instaui/models/user.dart';

class Reel {
  final String id;
  final User postedBy;
  final String imageUrl;
  final String description;
  final String caption;
  final String likes;
  final String comments;
  final bool isLiked;
  final bool isTagged;
  final User taggedUser;
  final String music;

  Reel(
      this.id,
      this.postedBy,
      this.imageUrl,
      this.description,
      this.caption,
      this.likes,
      this.comments,
      this.isLiked,
      this.isTagged,
      this.taggedUser,
      this.music);
}
