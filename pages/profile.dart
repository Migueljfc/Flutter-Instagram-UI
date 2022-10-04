import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/custom_profile_app_bar.dart';
import '../widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, index) {
            return [
              CustomProfileAppBar(),
              SliverToBoxAdapter(
                child: ProfileHeader(),
              ),
              SliverToBoxAdapter(
                child: TabBar(
                    indicatorWeight: 1,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.grid_on),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.assignment_ind_outlined,
                          size: 27,
                        ),
                      ),
                    ]),
              ),
            ];
          },
          body: TabBarView(children: [
            CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/${index + 1068}/500/500'),
                          ),
                        ),
                      );
                    }, childCount: 17),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1))
              ],
            ),
            CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://picsum.photos/id/${index + 1047}/500/500'),
                          ),
                        ),
                      );
                    }, childCount: 18),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1))
              ],
            )
          ]),
        ));
  }
}
