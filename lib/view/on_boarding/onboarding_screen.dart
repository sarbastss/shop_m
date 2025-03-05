import 'package:flutter/material.dart';
import 'package:monki_shop/common/color_extention.dart';
import 'package:monki_shop/common/common_widget/button_w.dart';
import 'package:monki_shop/resources/assets_manager.dart';
import 'package:monki_shop/resources/routes_manager.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": img.onboardingLogo1,
      "title": "Find Food You Love",
      "subtitle":
          "Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep"
    },
    {
      "image": img.onboardingLogo2,
      "title": "Explore Amazing Features",
      "subtitle": "Fast food delivery to your home, office\n wherever you are"
    },
    {
      "image": img.onboardingLogo3,
      "title": "Get Started Now",
      "subtitle":
          "Real time tracking of your food on the app\n once you placed the order"
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.floor() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: tcolor.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: size.height * 0.7,
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final data = onboardingData[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    OnboardingPage(
                      image: data["image"]!,
                      title: data["title"]!,
                      subtitle: data["subtitle"]!,
                      currentPage: _currentPage,
                      onboardingData: onboardingData,
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: _currentPage == onboardingData.length - 1
                  ? ButtonW(
                      text: "Get Start",
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.mainRoute);
                      },
                    )
                  : ButtonW(
                      text: "Next",
                      onTap: () {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.decelerate);
                      },
                    )),
          SizedBox(
            height: size.height * 0.2,
          )
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final dynamic onboardingData;
  final int currentPage;

  const OnboardingPage({super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.onboardingData,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 300,
          width: 300,
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onboardingData.length,
            (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentPage == index
                    ? Colors.orange // Active circle color
                    : tcolor.secnderytext, // Inactive circle color
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Text(
          title,
          style: TextStyle(
            color: tcolor.primarytext,
            fontSize: 27,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}
