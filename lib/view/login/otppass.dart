import 'package:flutter/material.dart';
// Removed unnecessary import
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/acountexit_ornot.dart';
import 'package:monki_shop/common/common_widget/button_w.dart';
import 'package:monki_shop/common/common_widget/text_appbar_auth.dart';
import 'package:monki_shop/resources/routes_manager.dart';
import 'package:pinput/pinput.dart';

class RestPassOtp extends StatefulWidget {
  const RestPassOtp({super.key});

  @override
  State<RestPassOtp> createState() => _RestPassOtpState();
}

class _RestPassOtpState extends State<RestPassOtp> {
  late final SmsRetriever smsRetriever;

 
  late final FocusNode focusNode;

  @override
  Widget build(BuildContext context) { 
        const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 22,
        color: tcolor.secnderytext
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color:tcolor.primary),
      ),
    );
    return Scaffold(  
      backgroundColor: tcolor.white, 
      body: Center(
        child: Column(
         children: [
            TextAppbarAuth(
         firsttext: "We have sent an OTP to\nyour Mobile",
         secondtext: "Please check your mobile number 07*******12\ncontinue to reset your password"
            ), 
             SizedBox( 
              height: 35,
             ), 
                Form(
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Pinput(
                     
                      defaultPinTheme: defaultPinTheme,
                      separatorBuilder: (index) => const SizedBox(width: 8),
                      validator: (value) {
                        return value == '2222' ? null : 'Pin is incorrect';
                      },
                      hapticFeedbackType: HapticFeedbackType.lightImpact,
                      onCompleted: (pin) {
                        debugPrint('onCompleted: $pin');
                      },
                      onChanged: (value) {
                        debugPrint('onChanged: $value');
                      },
                      cursor: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 9),
                            width: 22,
                            height: 1,
                            color: tcolor.primary,
                          ),
                        ],
                      ),
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: tcolor.primary),
                        ),
                      ),
                      submittedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          color: tcolor.primary.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: tcolor.primary),
                        ),
                      ),
                      errorPinTheme: defaultPinTheme.copyBorderWith(
                        border: Border.all(color: Colors.redAccent),
                      ),
                    ),
                  ),
                ),  
              const  SizedBox(height: 40,) ,
                 
                 ButtonW(text: "Next" , onTap: () => Navigator.pushReplacementNamed(context, Routes.newpassword),) ,  
                  
 const  SizedBox(height: 10,) ,
                  textandbuttonforacountexitornot(first: "Didnt Receive", second: "Click here", onTap: (){}) , 
              ],
            ),
          ),
        );
        }
}
   