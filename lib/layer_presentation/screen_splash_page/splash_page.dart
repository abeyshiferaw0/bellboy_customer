

import 'package:bellboy_customer/gen/assets.gen.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   width: double.infinity,
          //   color: Colors.black.withOpacity(0.05),
          // ),

          Opacity(
            opacity: 0.05,
            child: SvgPicture.asset(
              Assets.icons.light,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.icons.light,
                  width: AppSizes.icon_size_16,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: AppSizes.mp_w_6,
                ),
                Text(
                  "QUIZ BET".toUpperCase(),
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: AppColors.black,
                    fontSize: AppSizes.font_14 * 2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
