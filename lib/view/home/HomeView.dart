import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/home_page/catagory_w.dart';
import 'package:monki_shop/common/common_widget/home_page/most_popler_widget.dart';
import 'package:monki_shop/common/common_widget/home_page/name_viewall.dart';
import 'package:monki_shop/common/common_widget/home_page/recent_populer.dart';
import 'package:monki_shop/common/common_widget/pagewidget/apbar_pages.dart';
import 'package:monki_shop/common/common_widget/home_page/delivery_widget.dart';
import 'package:monki_shop/common/common_widget/pagewidget/textfield_search.dart';
import 'package:monki_shop/view/home/populer_resturant.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});

  List catArr = [
    {
      "image": "assets/images/alireza-etemadi-9G_oJBKwi1c-unsplash.png",
      "name": "Offers"
    },
    {
      "image": "assets/images/haryo-setyadi-yvzzemH8-J0-unsplash.png",
      "name": "Sri Lankan"
    },
    {
      "image": "assets/images/jakub-kapusnak-tEVisOXz26Y-unsplash.png",
      "name": "Italian"
    },
    {
      "image": "assets/images/shreyak-singh-0j4bisyPo3M-unsplash.png",
      "name": "Indian"
    },
  ];

  List popArr = [
    {
      "image": "assets/images/prakash-meghani-07bBNmiV7ag-unsplash.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/heather-ford-teuvnOXOGVo-unsplash.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image":
          "assets/images/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png",
      "name": "Bakes by Tella",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/images/joseph-gonzalez-zcUgjyqEwe8-unsplash.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/karthik-garikapati-oBbTc1VoT-0-unsplash.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];

  List recentArr = [
    {
      "image": "assets/images/clem-onojeghuo-9AEh9i-WPhI-unsplash.png",
      "name": "Mulberry Pizza by Josh",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/masimo-grabar-NzHRSLhc6Cs-unsplash.png",
      "name": "Barita",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/chad-montano-MqT0asuoIcU-unsplash.png",
      "name": "Pizza Rush Hour",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tcolor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              ApbarPages(apbartext: "Good Moorning Alika!",),
              DeliveryWidget(),
              const SizedBox(height: 40),
              TextfieldSearch(),
              const SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: CatagoryW(
                  cat: catArr,
                ),
              ),
              NameViewall(text: "Popular Restaurents"),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: popArr.length,
                itemBuilder: (context, index) {
                  final pop = popArr[index] as Map<String, dynamic>;
                  return PopulerResturant(
                    popre: pop,
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              NameViewall(text: "Most populer "),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: mostPopArr.length,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final popobj = mostPopArr[index] as Map? ?? {};

                      return MostPoplerWidget(popobj: popobj);
                    }),
              ), 
              NameViewall(text: "Recent Items") , 
              ListView.builder( 
                shrinkWrap: true,
                itemCount: recentArr.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final obj = recentArr[index] as Map? ?? {};
                  return RecentPopuler(robj: obj); 
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
