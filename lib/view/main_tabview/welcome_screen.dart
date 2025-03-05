import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/button_w.dart';
import 'package:monki_shop/resources/routes_manager.dart';

import '../../resources/assets_manager.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              fit: StackFit.loose,
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  img.welcome2,
                  width: size.width,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  img.welcome3,
                  width: size.width,
                  fit: BoxFit.contain,
                ),
                //   Positioned(
                //     top: -50, left:-2,
                //     child: Image.asset( img.welcome2, width: size.width  ,  fit: BoxFit.contain,)),
                //
                Image.asset(
                  img.splashLogo,
                  width: size.width * 0.5,
                  height: size.height*0.99,
                ),

                Positioned(
                  bottom: size.height * 0.130,
                  child: Column(
                    children: [
                      Container(
                          width: size.width * 0.9400,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep",
                            style: TextStyle(
                              color: tcolor.primarytext,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      ButtonW(
                        text: "LOG IN",
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.loginRoute);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ButtonW(
                        text: "singup",
                        type: buttontype.secondery,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
