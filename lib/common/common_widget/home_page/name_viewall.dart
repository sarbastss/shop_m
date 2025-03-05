import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';

// ignore: must_be_immutable
class NameViewall extends StatelessWidget { 
  void Function()? onTap ; 
  final String text ; 
   NameViewall({super.key, required this.text ,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20)  ,
    child: Row( 
      mainAxisAlignment:  MainAxisAlignment.spaceBetween  , 
      children: [
      Text(text , style: TextStyle(color: tcolor.primarytext ,fontSize: 24.0, ), ) , 
      GestureDetector( 
        onTap: onTap  ,
        child: Text("View all" ,style: TextStyle(color: tcolor.primary , fontSize: 16 , fontWeight: FontWeight.w600),),
      )
    ],),);
  }
}