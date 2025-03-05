import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';

class MostPoplerWidget extends StatelessWidget {
  final Map popobj;
  void Function()? onTap;
  MostPoplerWidget({super.key, required this.popobj});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                popobj["image"].toString(),
                width: 220,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              popobj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: tcolor.primarytext,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  popobj["type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: tcolor.secnderytext, fontSize: 12),
                ),
                Text(
                  " . ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: tcolor.primarytext, fontSize: 12),
                ),
                Text(
                  popobj["food_type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: tcolor.secnderytext, fontSize: 12),
                ),
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  "assets/images/star-2.png",
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  popobj["rate"],
                  textAlign: TextAlign.center,
                  style: TextStyle(color: tcolor.primarytext, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
