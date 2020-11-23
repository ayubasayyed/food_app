import 'package:flutter/material.dart';

import 'custom_text.dart';

class BottomNavIcon extends StatelessWidget {
  final String text;
  final String image;

  BottomNavIcon({@required this.text, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
      child: Column(
        children: [
          Image.asset("images/$image", width: 20, height: 20,),
          SizedBox(height: 1),
          CustomText(text: "$text", size: 14,),
        ],
      ),
    );
  }
}
