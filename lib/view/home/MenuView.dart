import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/pagewidget/apbar_pages.dart';
import 'package:monki_shop/common/common_widget/pagewidget/textfield_search.dart';
import 'package:monki_shop/view/menu/menu_item_view.dart';

// ignore: must_be_immutable
class MenuView extends StatelessWidget {
  MenuView({super.key});
  List menuArr = [
    {
      "name": "Food",
      "image": "assets/images/Mask Group 2189.png",
      "items_count": "120",
    },
    {
      "name": "Beverages",
      "image": "assets/images/davide-cantelli-jpkfc5_d-DI-unsplash.png",
      "items_count": "220",
    },
    {
      "name": "Desserts",
      "image": "assets/images/allison-griffith-VCXk_bO97VQ-unsplash.png",
      "items_count": "155",
    },
    {
      "name": "Promotions",
      "image": "assets/images/Mask Group 2189.png",
      "items_count": "25",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: tcolor.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ApbarPages(
            apbartext: "Menu",
          ),
          TextfieldSearch(),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.09),
                width: 100,
                height: size.height * 0.6,
                decoration: BoxDecoration(
                    color: tcolor.primary,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(55),
                      topRight: Radius.circular(55),
                    )),
              ),
               Container(
                margin: EdgeInsets.only(top: 80),
                 child: ListView.builder(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: menuArr.length,
                        itemBuilder: ((context, index) {
                          var mObj = menuArr[index] as Map? ?? {};
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>MenuItemsView(
                                    mObj: mObj,
                                  ),
                                ),
                              );
                            },
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 9, bottom: 8, right: 20),
                                  width: size.width - 100,
                                  height: 90,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          bottomLeft: Radius.circular(25),
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 7,
                                            offset: Offset(0, 4))
                                      ]),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      mObj["image"],
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            mObj["name"].toString(),
                                            style: TextStyle(
                                                color: tcolor.primarytext,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "${mObj["items_count"].toString()} items",
                                            style: TextStyle(
                                                color: tcolor.secnderytext,
                                                fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 4,
                                                offset: Offset(0, 2))
                                          ]),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        "assets/images/Group 6819.png",
                                        width: 15,
                                        height: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        })),
               )
            ],
          )
        ],
      ),
    );
  }
}
