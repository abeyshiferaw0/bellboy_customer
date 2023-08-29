import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/order_request_card.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteOff,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Column(
          children: [
            OrderRequestCard(),
          ],
        ),
      ),
    );
  }
}
