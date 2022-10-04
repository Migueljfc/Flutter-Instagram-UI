import 'package:flutter/material.dart';
import 'package:instaui/_mock_data/mock.dart';
import 'package:instaui/widgets/custom_home_app_bar.dart';

import '../widgets/add_story_card.dart';
import '../widgets/post_card.dart';
import '../widgets/story_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 105,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: stories.length + 1,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 90,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: index == 0
                            ? AddStoryCard()
                            : StoryCard(
                                story: stories[index - 1],
                              ),
                      );
                    }),
              ),
              Divider(
                height: 1,
              ),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return PostCard(
            post: posts[index],
          );
        }, childCount: posts.length))
      ],
    );
  }
}
