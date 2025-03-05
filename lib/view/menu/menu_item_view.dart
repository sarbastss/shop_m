import 'package:flutter/material.dart';
import 'package:monki_shop/common/common_widget/pagewidget/apbar_pages.dart';
import 'package:monki_shop/common/common_widget/pagewidget/textfield_search.dart';

import '../../common/color_extention.dart' show tcolor;

class MenuItemsView extends StatefulWidget {
  final Map mObj;
  const MenuItemsView({super.key, required this.mObj});

  @override
  State<MenuItemsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  TextEditingController txtSearch = TextEditingController();

  List menuItemsArr = [
    {
      "image":
          "assets/images/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png",
      "name": "French Apple Pie",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts"
    },
    {
      "image":
          "assets/images/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png",
      "name": "Dark Chocolate Cake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cakes by Tella",
      "food_type": "Desserts"
    },
    {
      "image":
          "assets/images/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png",
      "name": "Street Shake",
      "rate": "4.9",
      "rating": "124",
      "type": "Café Racer",
      "food_type": "Desserts"
    },
    {
      "image": "assets/images/prakash-meghani-07bBNmiV7ag-unsplash.png",
      "name": "Fudgy Chewy Brownies",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts"
    },
    {
      "image": "assets/images/prakash-meghani-07bBNmiV7ag-unsplash.png",
      "name": "French Apple Pie",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts"
    },
    {
      "image": "assets/images/prakash-meghani-07bBNmiV7ag-unsplash.png",
      "name": "Dark Chocolate Cake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cakes by Tella",
      "food_type": "Desserts"
    },
    {
      "image": "assets/images/prakash-meghani-07bBNmiV7ag-unsplash.png",
      "name": "Street Shake",
      "rate": "4.9",
      "rating": "124",
      "type": "Café Racer",
      "food_type": "Desserts"
    },
    {
      "image": "assets/images/prakash-meghani-07bBNmiV7ag-unsplash.png",
      "name": "Fudgy Chewy Brownies",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tcolor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 46,
              ),
              ApbarPages(apbartext: " ${widget.mObj["name"].toString()}"),
              TextfieldSearch(),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: widget.mObj.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final mob = menuItemsArr[index] as Map? ?? {};
                  return Container( 
                    height: 220 ,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: tcolor.primary,
                    child: Stack(
                      children: [
                        
                        Image( fit: BoxFit.contain, width: double.maxFinite,
                            image: AssetImage(mob["image"].toString() , )) , 
  Container(
              width: double.maxFinite,
             
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.black
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
Positioned(  
  left: 10,
  bottom: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mob["name"] ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: tcolor.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                               "assets/images/star-5.png",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                       mob["rate"] ?? '',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.primary, fontSize: 11),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "(${mob["rating"] ?? ''} Ratings)",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.white, fontSize: 11),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        mob["type"] ?? '',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.white, fontSize: 11),
                      ),
                      Text(
                        " . ",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.white, fontSize: 11),
                      ),
                      Text(
                       mob["food_type"] ?? '',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: tcolor.white, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                     
                      
                      
                        ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
