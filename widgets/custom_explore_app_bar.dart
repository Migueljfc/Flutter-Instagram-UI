import 'package:flutter/material.dart';

class CustomExplorerAppBar extends StatelessWidget {
  const CustomExplorerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      centerTitle: false,
      elevation: 0,
      title: Container(
        height: 38,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200),
        child: TextField(
          cursorColor: Colors.grey.shade500,
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            border: InputBorder.none,
            prefixIcon:
                Icon(Icons.search, size: 24, color: Colors.grey.shade500),
          ),
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(1),
          child: IconButton(
            onPressed: () => {},
            icon: Icon(Icons.pin_drop_outlined),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
