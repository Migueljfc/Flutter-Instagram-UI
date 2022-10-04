import 'package:flutter/material.dart';

class CustomShopAppBar extends StatelessWidget {
  const CustomShopAppBar({super.key, required this.showSearchBar});
  final bool showSearchBar;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0,
      title: showSearchBar
          ? Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
            )
          : Text(
              "Shop",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
      actions: [
        IconButton(onPressed: () => {}, icon: Icon(Icons.class_outlined)),
        IconButton(onPressed: () => {}, icon: Icon(Icons.dehaze_outlined)),
      ],
    );
  }
}
