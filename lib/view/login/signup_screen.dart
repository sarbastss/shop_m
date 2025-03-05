import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/acountexit_ornot.dart';
import 'package:monki_shop/common/common_widget/button_w.dart';
import 'package:monki_shop/common/common_widget/text_appbar_auth.dart';
import 'package:monki_shop/common/common_widget/textfiledcon.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final siz = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: tcolor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextAppbarAuth(
                  firsttext: "Sign UP",
                  secondtext: "Add your details to sign up"),
              SizedBox(
                height: 40,
              ),
              Textfiledcon(hinttext: "Name"),
              const SizedBox(
                height: 25,
              ),
              Textfiledcon(hinttext: "Email"),
              const SizedBox(
                height: 25,
              ),
              Textfiledcon(hinttext: "Mobile No"),
              const SizedBox(
                height: 25,
              ),
              Textfiledcon(hinttext: "Address"),
              const SizedBox(
                height: 25,
              ),
              Textfiledcon(hinttext: "Password"),
              const SizedBox(
                height: 25,
              ),
              Textfiledcon(hinttext: "Confirm Password"),
              const SizedBox(
                height: 25,
              ),
              ButtonW(
                text: "Sign Up",
                onTap: () {},
              ),
              SizedBox(
                height: siz.height*0.1,
              ),
              textandbuttonforacountexitornot(
                first: "Already have Account",
                second: "Log in",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
