import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/button_w.dart';
import 'package:monki_shop/common/common_widget/text_appbar_auth.dart';
import 'package:monki_shop/common/common_widget/textfiledcon.dart';

import '../../resources/routes_manager.dart';

class RestpasswordEmail extends StatelessWidget {
  const RestpasswordEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return Scaffold(
      backgroundColor: tcolor.white,
      body: Center( 
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0),
          child: Column(
            children: [
              TextAppbarAuth(
                  firsttext: "Reset Password",
                  secondtext:
                      "Please enter your Email to recover a\nlink to create an new password"), 
                      SizedBox(height: size.height*0.05,),

              Textfiledcon(hinttext: "Email"),  

           SizedBox(height: size.height*0.040,), 

              ButtonW(text: "Send" , onTap:  () => Navigator.pushReplacementNamed(context, Routes.restpasswordotp), )
            ],
          ),
        ),
      ),
    );
  }
}
