import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/acountexit_ornot.dart';
import 'package:monki_shop/common/common_widget/button_w.dart';
import 'package:monki_shop/common/common_widget/buttonlogiinwithfandG.dart';
import 'package:monki_shop/common/common_widget/text_appbar_auth.dart';
import 'package:monki_shop/common/common_widget/textfiledcon.dart';
import 'package:monki_shop/resources/routes_manager.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emcon = TextEditingController();
  final TextEditingController _pascon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: tcolor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const SizedBox( height: 30,) , 
              TextAppbarAuth(
                  firsttext: "Log in ",
                  secondtext: "Add your details to login"),
              SizedBox(
                height: 50,
              ),
             Textfiledcon(hinttext: "Enter Your Email "),  
             SizedBox( height: 30,) ,

             Textfiledcon(hinttext: "Enter Your Password" , obscureText1: true,) ,
       const SizedBox( height: 30,) , 
       ButtonW(text:  "Log in "  , onTap: () => Navigator.pushReplacementNamed(context, Routes.onBoardingRoute),) ,  const SizedBox( height: 30,) , 
       TextButton( 
        style: TextButton.styleFrom( backgroundColor: tcolor.white),
        onPressed: () {
         Navigator.pushReplacementNamed(context, Routes.forgotPasswordRoute); 
       }, child: Text(" forget Your Password ? click me! " , style: TextStyle( color: tcolor.primarytext),)) ,
        const SizedBox( height: 30,) , 
        Text("or login with", style: TextStyle( color: tcolor.primarytext),) ,const SizedBox( height: 30,) , 
         Buttonlogiinwithfandg(text: "login with Facebook", colorr:Colors.lightBlue, iconn: Icons.facebook),const SizedBox( height: 30,) , 
           Buttonlogiinwithfandg(text: "login with google", colorr:const Color.fromARGB(230, 246, 33, 33), iconn: Icons.g_mobiledata_rounded)
          ,   SizedBox( height:size.height*0.1 ,) , 
            textandbuttonforacountexitornot(first: "Dont have an  account?", second: "Sign Up", onTap: (){ 
                Navigator.pushReplacementNamed(
                              context, Routes.registerRoute);
                        
            })
              ],
          ),
        ), 
      ),
    );
  }
}
