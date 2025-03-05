import 'package:flutter/material.dart';
import 'package:monki_shop/resources/strings_manager.dart';
import 'package:monki_shop/view/login/new_password.dart';
import 'package:monki_shop/view/login/otppass.dart';
import 'package:monki_shop/view/login/restpassword_email.dart';
import 'package:monki_shop/view/login/signup_screen.dart';
import 'package:monki_shop/view/main_tabview/welcome_screen.dart';
import 'package:monki_shop/view/on_boarding/onboarding_screen.dart';
import 'package:monki_shop/view/on_boarding/splash_screen.dart';

import '../view/login/login_screen.dart';
import '../view/login/main_tabview.dart';

class Routes {
  static const String splashRoute = "/";
  static const String Welcomeroute = "/welcome";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String newpassword = "/newpassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String restpasswordotp = "/restpaswordotp";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.Welcomeroute:
        // initLoginModule();
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case Routes.loginRoute:
        // initLoginModule();
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.registerRoute:
        // initRegisterModule();
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.forgotPasswordRoute:
        // initForgotPasswordModule();
        return MaterialPageRoute(builder: (_) => const RestpasswordEmail());

      case Routes.restpasswordotp:
        return MaterialPageRoute(builder: (_) => RestPassOtp());
      case Routes.newpassword:
        return MaterialPageRoute(builder: (_) => NewPassword());

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainTabView());

      //       initHomeModule();
      //       return MaterialPageRoute(builder: (_) => const MainView());
      //     case Routes.storeDetailsRoute:
      //       initStoreDetailsModule();
      //       return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      //     default:
      //       return unDefinedRoute();
      //   }
      // }
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRouteFound.trim()),
              ),
              body: Center(child: Text(AppStrings.noRouteFound.trim())),
            ));
  }
}
