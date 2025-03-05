import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:monki_shop/common/color_extention.dart';

class ApbarPages extends StatelessWidget {
  final String apbartext; 
  const ApbarPages({super.key, required this.apbartext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            apbartext,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: tcolor.primarytext),
          ),
          Image.asset("assets/images/shopping-cart.png")
        ],
      ),
    );
  }
}
