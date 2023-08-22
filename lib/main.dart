import 'package:bellboy_customer/config/app_router.dart';
import 'package:bellboy_customer/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          onGenerateRoute: AppRouter.generateRoute,
          theme: AppTheme.light,
          title: 'BellBoy',
          initialRoute: AppRouterPaths.splashRoute,
        );
      },
    );
  }
}
