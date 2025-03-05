import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/button_w.dart';
import 'package:monki_shop/common/common_widget/text_appbar_auth.dart';
import 'package:monki_shop/common/common_widget/textfiledcon.dart';
import 'package:monki_shop/resources/routes_manager.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: tcolor.white , 
     body:  Padding( 
      padding:  EdgeInsets.symmetric(horizontal: 38),
       child: Column( 
        children: [ 
       
           TextAppbarAuth(firsttext: "New Password", secondtext: "Please enter your email to receive a\nlink to  create a new password via email") , 
            
            const SizedBox( height: 50,) , 
             Textfiledcon(hinttext: "New password"), 
             const SizedBox( height: 25,) , 
             Textfiledcon(hinttext: "New password") , 
             const SizedBox( height: 25,) ,  
              ButtonW(text:  "Next" , onTap:()=>Navigator.pushReplacementNamed(context ,Routes.onBoardingRoute ) ,)
       
        ],
       ),
     ),
    );
  }
}