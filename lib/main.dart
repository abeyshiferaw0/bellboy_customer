import 'package:bellboy_customer/config/app_router.dart';
import 'package:bellboy_customer/theme/app_theme.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

final botToastBuilder = BotToastInit();

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          builder: (context, child) {
            child = botToastBuilder(context,child);
            //return child;
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                // Increase the text scale factor to 1.5
                textScaleFactor: 0.9,
              ),
              child: child,
            );
          },
          onGenerateRoute: AppRouter.generateRoute,
          navigatorObservers: [BotToastNavigatorObserver()],
          theme: AppTheme.light,
          title: 'BellBoy',
          initialRoute: AppRouterPaths.mainPage,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
