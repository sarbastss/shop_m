import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';

// ignore: must_be_immutable
class CatagoryW extends StatelessWidget {
  final List  cat;
  void Function()? onTap; 
  CatagoryW({super.key, required this.cat , this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15),
      itemCount: cat.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final catobj = cat[index] as Map? ?? {};
        return GestureDetector(
          onTap: onTap ,
          child: Container(
            width: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(catobj["image"].toString())), 
              SizedBox(height: 10,), 
              Text(catobj["name"] , style: TextStyle(color: tcolor.primarytext , fontSize: 16) ,)],
            ),
          ),
        );
      },
    );
  }
}
