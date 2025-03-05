import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';

import '../../common/common_widget/tab_button.dart' show TabButton;
import '../home/HomeView.dart' show HomeView;
import '../home/MenuView.dart';
import '../home/MoreView.dart';
import '../home/OfferView.dart';
import '../home/ProfileView.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selctTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 64,
        height: 64,
        child: FloatingActionButton(
          onPressed: () {
            if (selctTab != 2) {
              selctTab = 2;
              selectPageView =  HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor: selctTab == 2 ? tcolor.primary : tcolor.placeholder,
          child: Image.asset(
            "assets/images/asset-13.png",
            width: 30,
            height: 30,
          ),
        ),
      ),
      bottomNavigationBar: Container(
         decoration: BoxDecoration( boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), // Shadow color
                  spreadRadius: 0.1, // How far the shadow extends
                  blurRadius: 15, // Blur radius
                  offset: Offset(0, -10),  
                  blurStyle: BlurStyle.normal 
                   
                   // Shadow offset (x, y) - Negative Y for top shadow
                ),
              ],),
        child: BottomAppBar(  
          color: tcolor.white,
          surfaceTintColor: tcolor.white,
          shadowColor: tcolor.secnderytext,
          elevation: 1,
          notchMargin: 12,
          height: 64,
          shape: const CircularNotchedRectangle(),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                    title: "Menu",
                    icon: "assets/images/Group 8187.png",
                    onTap: () {
                      if (selctTab != 0) {
                        selctTab = 0;
                        selectPageView = MenuView();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: selctTab == 0),
                TabButton(
                    title: "Offer",
                    icon: "assets/images/Group 8188.png",
                    onTap: () {
                      if (selctTab != 1) {
                        selctTab = 1;
                        selectPageView = const OfferView();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: selctTab == 1),
                const SizedBox(
                  width: 40,
                  height: 40,
                ),
                TabButton(
                    title: "Profile",
                    icon: "assets/images/Group 8189.png",
                    onTap: () {
                      if (selctTab != 3) {
                        selctTab = 3;
                        selectPageView = const ProfileView();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: selctTab == 3),
                TabButton(
                    title: "More",
                    icon: "assets/images/Group 8190.png",
                    onTap: () {
                      if (selctTab != 4) {
                        selctTab = 4;
                        selectPageView = const MoreView();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isSelected: selctTab == 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
