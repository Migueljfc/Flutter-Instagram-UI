import 'package:flutter/material.dart';
import 'package:instaui/widgets/reels_details.dart';
import 'package:instaui/widgets/reels_side_action_bar.dart';

import '../_mock_data/mock.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Reels",
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.photo_camera_outlined),
            color: Colors.white,
            iconSize: 30,
          ),
        ],
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: reels.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(reels[index].imageUrl))),
              child: Center(
                  child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.transparent
                      ],
                      begin: Alignment(0, -0.9),
                      end: Alignment(0, 0.1),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.transparent
                      ],
                      begin: Alignment(0, 0.1),
                      end: Alignment(0, -0.9),
                    )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            flex: 14,
                            child: ReelsDetails(
                              reel: reels[index],
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: ReelsSideActionBar(
                              reel: reels[index],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
            );
          }),
    );
  }
}
