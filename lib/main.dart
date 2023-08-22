import 'package:bellboy_customer/config/app_router.dart';
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
          theme: ThemeData(
            brightness: Brightness.light,

            primaryColor: Colors.lightBlue[800],
            fontFamily: 'Georgia',
            textTheme: const TextTheme(
              displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
              titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
              bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind'),
            ),
          ),
          title: 'BellBoy',
          initialRoute: AppRouterPaths.splashRoute,
        );
      },
    );
  }
}
