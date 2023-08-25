import 'package:bellboy_customer/layer_presentation/screen_email_sent_done/screen_email_sent_done.dart';
import 'package:bellboy_customer/layer_presentation/screen_login/screen_login.dart';
import 'package:bellboy_customer/layer_presentation/screen_login_intro/screen_login_intro.dart';
import 'package:bellboy_customer/layer_presentation/screen_splash_page/splash_page.dart';
import 'package:flutter/cupertino.dart';

class ScreenArguments {
  final Map<String, dynamic> data;

  ScreenArguments({required this.data});
}

class AppRouterPaths {
  static const String splashRoute = '/';
  static const String loginIntro = '/login_intro';
  static const String login = '/login';
  static const String emailSentDone = '/email_sent_done';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //BUILDER
    WidgetBuilder builder;
    //ROUTERS PATH SWITCH
    switch (settings.name) {
      case AppRouterPaths.splashRoute:
        builder = (_) => const SplashPage();
        break;
      case AppRouterPaths.loginIntro:
        builder = (_) => const ScreenLoginIntro();
        break;
      case AppRouterPaths.login:
        builder = (_) => const ScreenLogin();
        break;
      case AppRouterPaths.emailSentDone:
        builder = (_) => const ScreenEmailSentDone();
        break;
      default:
        throw Exception('Invalid route: ${settings.name}');
    }

    //BUILDER  WITH ROUTERS
    return CupertinoPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}
