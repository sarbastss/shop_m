import 'package:flutter/widgets.dart';

import '../color_extention.dart';

class TextAppbarAuth extends StatelessWidget {
  final String firsttext;
  final String secondtext; 
  const TextAppbarAuth({super.key, required this.firsttext, required this.secondtext});

  @override
  Widget build(BuildContext context) {
    return Column( 

      children: [ 
        SizedBox(height: 50,), 

        Text(
         firsttext, textAlign: TextAlign.center,
          style: TextStyle(
              color: tcolor.primarytext,
              fontSize: 30,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          secondtext, 
          textAlign: TextAlign.center,
          style: TextStyle(
              color: tcolor.primarytext,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
