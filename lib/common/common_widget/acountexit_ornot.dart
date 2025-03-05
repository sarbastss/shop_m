import 'package:flutter/material.dart';

import '../color_extention.dart';

// ignore: must_be_immutable
class textandbuttonforacountexitornot extends StatelessWidget {
  final String first;
  final String second;
  void Function()? onTap; 
  textandbuttonforacountexitornot(
      {super.key, required this.first, required this.second , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$first?",
          style: TextStyle(
            color: tcolor.primarytext,
            fontWeight: FontWeight.w400,
          ),
        ), 
        SizedBox(width: 5,) , 
        GestureDetector(
            onTap: onTap,
            child: Text(
             second,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: tcolor.primary),
            )),
      ],
    );
  }
}
