import 'package:flutter/material.dart';
import 'package:instaui/_mock_data/mock.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({required this.selectedIndex, required this.onIconTap});
  final int selectedIndex;
  final Function onIconTap;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: selectedIndex == 2 ? Colors.black : Colors.white,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () => {onIconTap(0)},
                iconSize: 30,
                color: selectedIndex == 2 ? Colors.white : Colors.black,
                icon: Icon(
                    selectedIndex == 0 ? Icons.home : Icons.home_outlined)),
            IconButton(
                onPressed: () => {onIconTap(1)},
                iconSize: 30,
                color: selectedIndex == 2 ? Colors.white : Colors.black,
                icon: Icon(
                    selectedIndex == 1 ? Icons.search : Icons.search_outlined)),
            IconButton(
                onPressed: () => {onIconTap(2)},
                iconSize: 30,
                color: selectedIndex == 2 ? Colors.white : Colors.black,
                icon: Icon(selectedIndex == 2
                    ? Icons.smart_display
                    : Icons.smart_display_outlined)),
            IconButton(
                onPressed: () => {onIconTap(3)},
                iconSize: 30,
                color: selectedIndex == 2 ? Colors.white : Colors.black,
                icon: Icon(selectedIndex == 3
                    ? Icons.local_mall
                    : Icons.local_mall_outlined)),
            InkWell(
              onTap: (() => {onIconTap(4)}),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 15,
                backgroundImage: NetworkImage(currentUser.profileImage),
              ),
            )
          ],
        ),
      ),
    );
  }
}
