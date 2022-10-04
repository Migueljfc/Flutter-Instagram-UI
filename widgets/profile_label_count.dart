import 'package:flutter/widgets.dart';

class ProfileLabelCount extends StatelessWidget {
  const ProfileLabelCount(
      {super.key, required this.labeText, required this.count});
  final String labeText;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(labeText),
      ],
    );
  }
}
