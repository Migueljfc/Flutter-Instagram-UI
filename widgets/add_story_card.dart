import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:instaui/_mock_data/mock.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 32,
              backgroundImage: NetworkImage(currentUser.profileImage),
            ),
            Positioned(
                top: 42,
                left: 40,
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 18,
                    padding: EdgeInsets.zero,
                    onPressed: () => {},
                    icon: Icon(Icons.add_outlined),
                  ),
                ))
          ],
        ),
        Spacer(),
        Text(
          "Your Story",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
