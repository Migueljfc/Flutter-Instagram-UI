import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: true,
      centerTitle: false,
      title: Text(
        "Instagram",
        style: GoogleFonts.satisfy(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.add_box_outlined),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.favorite_border_outlined),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.send_outlined),
          color: Colors.black,
        ),
      ],
    );
  }
}
