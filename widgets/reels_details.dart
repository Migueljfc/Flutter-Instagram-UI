import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import '../models/reel.dart';

class ReelsDetails extends StatelessWidget {
  const ReelsDetails({super.key, required this.reel});
  final Reel reel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 12,
            title: Text(
              reel.caption,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            leading: CircleAvatar(
              radius: 14,
              backgroundImage: NetworkImage(reel.postedBy.profileImage),
            ),
            trailing: Padding(
                padding: EdgeInsets.only(right: 100),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.white),
                  ),
                  child: Text(
                    "Follow",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.5),
                  ),
                ))),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: ExpandableText(
            reel.description,
            style: TextStyle(
                fontSize: 12.5,
                color: Colors.white,
                fontWeight: FontWeight.w400),
            expandText: '...',
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 1,
            linkColor: Colors.grey,
          ),
        ),
        ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 5,
            title: reel.isTagged
                ? Row(
                    children: [
                      Container(
                        height: 20,
                        width: 125,
                        child: Marquee(
                          text: "${reel.music} . ",
                          scrollAxis: Axis.horizontal,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                          velocity: 10,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(Icons.person_outline_outlined,
                            color: Colors.white, size: 16),
                      ),
                      Text(
                        "${reel.taggedUser.userName}",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                : Text(
                    reel.music,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
            leading: Icon(
              Icons.graphic_eq_outlined,
              size: 16,
              color: Colors.white,
            )),
      ],
    );
  }
}
