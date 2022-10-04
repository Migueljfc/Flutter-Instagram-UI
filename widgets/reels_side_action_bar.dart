import 'package:flutter/material.dart';
import 'package:instaui/models/reel.dart';

class ReelsSideActionBar extends StatelessWidget {
  const ReelsSideActionBar({super.key, required this.reel});
  final Reel reel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => {},
          icon: Icon(
            reel.isLiked ? Icons.favorite : Icons.favorite_outline,
            color: reel.isLiked ? Colors.red : Colors.white,
            size: 28,
          ),
        ),
        Text(
          reel.likes,
          style: TextStyle(
              color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.chat_bubble_outline,
            color: Colors.white,
            size: 28,
          ),
        ),
        Text(
          reel.comments,
          style: TextStyle(
              color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.send_outlined,
            color: Colors.white,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.more_horiz_outlined,
            color: Colors.white,
            size: 28,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(reel.postedBy.profileImage),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
