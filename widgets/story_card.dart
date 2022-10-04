import 'dart:math';
import 'package:flutter/material.dart';
import '../models/story.dart';

class StoryCard extends StatelessWidget {
  StoryCard({super.key, required this.story});
  final Story story;
  var rgn = Random();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.yellow.shade800, Colors.orange, Colors.red]),
              border: Border.all(width: 2, color: Colors.transparent),
              borderRadius: BorderRadius.circular(50)),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30,
              backgroundImage: NetworkImage(story.postedBy.profileImage),
            ),
          ),
        ),
        Spacer(),
        Text(
          story.postedBy.userName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
