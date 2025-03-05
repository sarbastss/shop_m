import 'package:flutter/material.dart';
import 'package:monki_shop/resources/assets_manager.dart';

import '../main_tabview/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
 
     return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(img.splashbkg , 
            width: size.width, height: size.height, fit: BoxFit.cover,),
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                    img.splashLogo, width: size.width*0.5, height: size.height*0.5,)), // Add your logo image here
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
