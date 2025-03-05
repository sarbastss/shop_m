import 'package:flutter/material.dart';

import '../color_extention.dart';

// ignore: must_be_immutable 

enum buttontype { primery , secondery}
// ignore: must_be_immutable
class ButtonW extends StatelessWidget {
  void Function()? onTap;
  final String text;
  final buttontype type; 
  ButtonW({super.key, required this.text, this.onTap, this.type = buttontype.primery, });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.065,
        decoration: BoxDecoration( 
          border: type == buttontype.primery ? null : Border.all(color:  tcolor.primary ,width: 1),
          color:type == buttontype.primery? tcolor.primary :tcolor.white,
          borderRadius: BorderRadius.circular(28.5),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color:type == buttontype.primery? tcolor.white : tcolor.primary , fontWeight: FontWeight.w600 , fontSize: 17) ,
        )),
      ),
    );
  }
}
