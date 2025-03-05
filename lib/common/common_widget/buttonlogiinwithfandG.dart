import 'package:flutter/material.dart';

import '../color_extention.dart';

// ignore: must_be_immutable
class Buttonlogiinwithfandg extends StatelessWidget {
  void Function()? onTap;
  final String text;
  final Color colorr;
  final IconData? iconn; 
  Buttonlogiinwithfandg({
    super.key,
    required this.text,
    this.onTap,
    required this.colorr, required this.iconn,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.065,
        decoration: BoxDecoration(
          color: colorr,
          borderRadius: BorderRadius.circular(28.5),
        ),
        child: Center( 
          
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(child: Icon(iconn ,color: Colors.white,size: 35.5,),) ,SizedBox(width: 5 , height: 25,), 

            Text(
              text,
              style: TextStyle(
                  color: tcolor.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ],
        )),
      ),
    );
  }
}
