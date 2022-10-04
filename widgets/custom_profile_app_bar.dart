import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instaui/_mock_data/mock.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(3.0),
              child: Icon(
                Icons.https_outlined,
                size: 18,
              )),
          Text(
            currentUser.userName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () => {}, icon: Icon(Icons.add_box_outlined)),
        IconButton(onPressed: () => {}, icon: Icon(Icons.dehaze_outlined)),
      ],
    );
  }
}
