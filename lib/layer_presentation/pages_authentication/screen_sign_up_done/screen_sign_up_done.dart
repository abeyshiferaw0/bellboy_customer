import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ScreenSignUpDone extends StatelessWidget {
  const ScreenSignUpDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_6),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  R.ASSETS_IMAGES_IMG_FINISH_LOGIN_PNG,
                  width: AppSizes.icon_size_24,
                  height: AppSizes.icon_size_24,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: AppSizes.mp_v_2,
                ),
                Text(
                  "Well Done!",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.displayOneBold,
                ),
                SizedBox(
                  height: AppSizes.mp_v_2,
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: AppSizes.mp_w_6),
                  child: Text(
                    "Welcome, John 🥳",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bodySmallBold
                        .copyWith(color: AppColors.grayDark),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
