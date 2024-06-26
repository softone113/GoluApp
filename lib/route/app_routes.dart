import 'package:flutter/material.dart';
import 'package:goluu_app/route/route_name.dart';
import '../presentations/auth/signin/login_screen.dart';
import '../presentations/auth/signup/signup_screen.dart';
import '../presentations/chat_screen/chat_screen.dart';
import '../presentations/dashboard/consult/consult.dart';
import '../presentations/dashboard/dashboard.dart';
import '../presentations/dashboard/rediscover/rediscover.dart';
import '../presentations/dashboard/transform/transform.dart';
import '../presentations/forget/forget.dart';
import '../presentations/landing_screen/introduction_screen.dart';
import '../presentations/splash_screen/splash_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RoutesName.introduction:
        return MaterialPageRoute(builder: (_) => IntroductionScreen());
      case RoutesName.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case RoutesName.forget:
        return MaterialPageRoute(builder: (_) => ForgetPassword());
      case RoutesName.dashboard:
        return MaterialPageRoute(builder: (_) => Dashboard());
      case RoutesName.consult:
        return MaterialPageRoute(builder: (_) => ConsultScreen());
      case RoutesName.rediscover:
        return MaterialPageRoute(builder: (_) => Rediscover());
      case RoutesName.transform:
        return MaterialPageRoute(builder: (_) => TransformScreen());
      case RoutesName.chat:
        return MaterialPageRoute(builder: (_) => CosmicAdvisor());




      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text("Error: Route not found"),
        ),
      ),
    );
  }
}
