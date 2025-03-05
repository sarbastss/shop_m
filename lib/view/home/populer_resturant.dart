import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';

class PopulerResturant extends StatelessWidget {
  final Map popre;
  final void Function()? ontap;
  const PopulerResturant({super.key, required this.popre, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: ontap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              popre["image"]?.toString() ?? '',
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 8,
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    popre["name"] ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: tcolor.primarytext,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                               "assets/images/star-5.png",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        popre["rate"] ?? '',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.primarytext, fontSize: 11),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "(${popre["rating"] ?? ''} Ratings)",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.secnderytext, fontSize: 11),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        popre["type"] ?? '',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.secnderytext, fontSize: 11),
                      ),
                      Text(
                        " . ",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.primarytext, fontSize: 11),
                      ),
                      Text(
                        popre["food_type"] ?? '',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.secnderytext, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
