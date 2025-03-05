import 'package:flutter/widgets.dart';
import 'package:monki_shop/common/color_extention.dart';

class DeliveryWidget extends StatelessWidget {
  const DeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column( 
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Text("Delivering to" ,style: TextStyle(color: tcolor.secnderytext),) , 
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
            Text("Current Location" , style:  TextStyle(fontSize: 22 ,fontWeight: FontWeight.w700 ,color: tcolor.primarytext.withOpacity(0.8)),  ) , 
            Image.asset("assets/images/Group 6819.png") ,
          
           ],)
        ],
      ),
    );
  }
}