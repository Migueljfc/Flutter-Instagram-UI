import 'package:flutter/material.dart';

import '../widgets/custom_shop_app_bar.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopState();
}

class _ShopState extends State<ShopPage> {
  late ScrollController _scrollController;
  bool _showSearchBar = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _showSearchBar = _scrollController.offset > 43;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        CustomShopAppBar(
          showSearchBar: _showSearchBar,
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade200,
            ),
            child: TextField(
              cursorColor: Colors.grey.shade500,
              decoration: InputDecoration(
                hintText: "Search shop",
                hintStyle: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500),
                border: InputBorder.none,
                prefixIcon:
                    Icon(Icons.search, size: 22, color: Colors.grey.shade500),
              ),
              style: TextStyle(color: Colors.black, fontSize: 16.5),
            ),
          ),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://picsum.photos/id/${index + 1070}/500/500'),
                  ),
                ),
                child: index == 0
                    ? Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Continue shopping',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ))
                    : null,
              );
            }, childCount: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1))
      ],
    );
  }
}
