import 'package:bellboy_customer/layer_presentation/screen_splash_page/splash_page.dart';
import 'package:flutter/cupertino.dart';

class ScreenArguments {
  final Map<String, dynamic> data;

  ScreenArguments({required this.data});
}

class AppRouterPaths {
  static const String splashRoute = '/';

}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //BUILDER
    WidgetBuilder builder;
    //ROUTERS PATH SWITCH
    switch (settings.name) {
      case AppRouterPaths.splashRoute:
        //builder = (_) => const TestPage();
        builder = (_) => const SplashPage();
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
