import 'package:flutter/material.dart';
import 'package:instaui/_mock_data/mock.dart';
import 'package:instaui/widgets/profile_label_count.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8, bottom: 12, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 45,
                backgroundImage: NetworkImage(currentUser.profileImage),
              ),
              SizedBox(
                width: 8,
              ),
              ProfileLabelCount(
                labeText: "Posts",
                count: "140",
              ),
              ProfileLabelCount(
                labeText: "Followers",
                count: "1,403",
              ),
              ProfileLabelCount(
                labeText: "Following",
                count: "567",
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                currentUser.userName,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    "Be yourself everyone else is already taken.",
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade200),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 11,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade200,
                ),
                child: Icon(
                  Icons.person_add,
                  size: 20,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return index != 6
                    ? Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(children: [
                          CircleAvatar(
                            radius: 33,
                            backgroundColor: Colors.grey.shade300,
                            backgroundImage: NetworkImage(
                                'https://picsum.photos/id/${index + 1038}/500/500'),
                          ),
                          Text(
                            "Holidays 202${index + 17}",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )
                        ]),
                      )
                    : Container(
                        width: 80,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(Icons.add, size: 30),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "New",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}
