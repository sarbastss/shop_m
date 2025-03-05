import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';

class TextfieldSearch extends StatelessWidget {
  const TextfieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField( 
        
        decoration: InputDecoration( 
           border:OutlineInputBorder( 
            borderRadius: BorderRadius.circular(28)  ,
            borderSide: BorderSide.none ,  
            
           ) , 
           fillColor: tcolor.TextBox  , 
           filled: true , 
           prefixIcon: Icon(Icons.search_sharp , size: 30 ,color: tcolor.placeholder,)
        ),
      ),
    );
  }
}