import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';

class RecentPopuler extends StatelessWidget {
  final Map robj; 
 const RecentPopuler({super.key, required this.robj});

  @override
  Widget build(BuildContext context) {
    return Container(   
      margin: EdgeInsets.symmetric(horizontal: 20),
     
      height: 85,
      child: Row(
        children: [ClipRRect( 
          borderRadius: BorderRadiusDirectional.circular(15),
          child: Image.asset(robj["image"])) , 
          SizedBox(width: 10,) , 
         Container( 
           margin:  EdgeInsets.only( top: 4),
           child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
               Text(robj["name"] ,  style: TextStyle(fontSize: 18 , color: tcolor.primarytext , fontWeight: FontWeight.w800),) , 
                  const SizedBox( height: 4,) , 
                 Row( children: [  
                    Text(robj["type"] , style:  TextStyle( fontSize: 12 , color: tcolor.primarytext , ) ,)  , 
                            Text(" . " , style:  TextStyle( fontSize: 16 , color: tcolor.primary , ) ,)  , 
                                   Text(robj["food_type"] , style:  TextStyle( fontSize: 12 , color: tcolor.primarytext , ) ,),  

                 ],) , 
                  
                 
                   Row( 
                    children: [  
                      Image.asset("assets/images/star-2.png") , 
                        
                         Text(robj["rate"] , style:  TextStyle( color: tcolor.primary , fontSize: 12 ),) ,
                      
                       const SizedBox(width: 5, ) ,
                        Text(
                        "(${robj["rating"] ?? ''} Ratings)",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.secnderytext, fontSize: 11),
                      ),
                    ],
                   )
            ],
           ),
         )
         
         ],
      ),
    );
  }
}
