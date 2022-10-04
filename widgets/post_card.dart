import 'package:flutter/material.dart';
import 'package:instaui/_mock_data/mock.dart';
import '../models/post.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
          dense: true,
          title: Text(
            post.postedBy.userName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          subtitle: Text(
            post.location,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 13),
          ),
          leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(post.postedBy.profileImage)),
          trailing: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        ),
        Image.network(
          post.imageUrl,
          height: 320,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                padding: EdgeInsets.only(right: 8),
                onPressed: () => {},
                icon: Icon(
                    post.isLiked ? Icons.favorite : Icons.favorite_outline),
                iconSize: 30,
                color: post.isLiked ? Colors.red : Colors.black,
              ),
              IconButton(
                padding: EdgeInsets.only(right: 8),
                onPressed: () => {},
                icon: Icon(Icons.chat_bubble_outline),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.send_outlined),
                iconSize: 30,
              ),
              Spacer(),
              IconButton(
                onPressed: () => {},
                icon: Icon(post.isBookmarked
                    ? Icons.bookmark
                    : Icons.bookmark_border_outlined),
                iconSize: 30,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text("Liked by ",
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                  Text(
                    " elonmusk.ab ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(" and ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  Text(
                    "${post.likes} others",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
                text: TextSpan(
                    text: post.postedBy.userName,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: " ${post.caption}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ]),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "View all ${post.comments} comments",
                )),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  post.postedTimeAgo,
                  style: TextStyle(fontSize: 13),
                )),
            SizedBox(
              height: 5,
            ),
          ],
        )
      ]),
    );
  }
}
