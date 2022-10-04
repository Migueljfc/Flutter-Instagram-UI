import 'package:flutter/material.dart';
import 'package:instaui/widgets/custom_explore_app_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instaui/widgets/custom_explorer_sliver_grid.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          CustomExplorerAppBar(),
          CustomExplorerSliverGrid(),
        ],
      ),
    );
  }
}
