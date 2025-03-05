import 'package:flutter/material.dart';

import '../color_extention.dart';

class Textfiledcon extends StatefulWidget {
  final String hinttext;
  final TextEditingController? controller;
  final bool obscureText1;
  const Textfiledcon(
      {super.key,
      required this.hinttext,
      this.controller,
      this.obscureText1 = false});

  @override
  State<Textfiledcon> createState() => _TextfiledconState();
}

class _TextfiledconState extends State<Textfiledcon> {
  bool boole = false;

  @override
  void initState() {
    super.initState();
    boole = widget.obscureText1;
  }

  @override
  Widget build(BuildContext context) {
     return SizedBox( 
     
      child: TextField(  
        
        cursorColor: tcolor.primary,
        obscureText: boole,
        controller: widget.controller,
        decoration: InputDecoration( 
          contentPadding: EdgeInsets.all(20),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
          ),
          filled: true,
          fillColor: tcolor.TextBox,
          hintText: widget.hinttext,
          hintStyle: TextStyle(
              color: tcolor.placeholder,
              fontSize: 16,
              fontWeight: FontWeight.w400),
          suffixIcon: widget.obscureText1
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      boole = !boole;
                    });
                  },
                  icon: Icon(boole
                      ? Icons.remove_red_eye
                      : Icons.remove_red_eye_outlined))
              : null,
        ),
      ),
    );
  }
}
