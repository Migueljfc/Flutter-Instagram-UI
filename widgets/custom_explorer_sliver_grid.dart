import 'package:flutter/material.dart';

class CustomExplorerSliverGrid extends StatelessWidget {
  CustomExplorerSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://picsum.photos/id/${index + 1047}/800/1080'),
                fit: BoxFit.fill,
              )),
              child: Container(
                padding: EdgeInsets.all(8),
                alignment: Alignment.topRight,
                child: Icon(
                  index % 10 == 0 ? Icons.collections_rounded : null,
                  color: Colors.white,
                  size: 18,
                ),
              ));
        },
        childCount: 33,
      ),
    );
  }
}
