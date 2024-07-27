import 'package:flutter/material.dart';
import 'package:foder_ui/ui/chekout/checkout_screen.dart';
import 'package:foder_ui/ui/detail_resto/detail_resto_screen.dart';
import 'package:foder_ui/ui/home/home_screen.dart';
import 'package:foder_ui/ui/navigate/navigate_screen.dart';
import 'package:foder_ui/ui/promo/promo_screen.dart';
import 'package:foder_ui/ui/success/success_screen.dart';

class RouteNames {
  static const String homeScreen = '/home_route';
  static const String promoScreen = '/promo_route';
  static const String detailRestoScreen = '/detail_resto_route';
  static const String checkoutScreen = '/checkout_route';
  static const String successScreen = '/success_route';
  static const String navigateScreen = '/';
}

class AppRoutes {
  static Route generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.navigateScreen:
        return MaterialPageRoute(builder: (context) => const NavigateScreen());
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteNames.promoScreen:
        return MaterialPageRoute(builder: (context) => const PromoScreen());
      case RouteNames.detailRestoScreen:
        return MaterialPageRoute(builder: (context) => const DetailRestoScreen());
      case RouteNames.checkoutScreen:
        return MaterialPageRoute(builder: (context) => const CheckoutScreen());
      case RouteNames.successScreen:
        return MaterialPageRoute(builder: (context) => const SuccessScreen());
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
