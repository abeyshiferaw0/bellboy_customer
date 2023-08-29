import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_white_fill.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ScreenFindAccountsDone extends StatelessWidget {
  const ScreenFindAccountsDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      R.ASSETS_IMAGES_IMG_SENT_EMAIL_PNG,
                      width: AppSizes.icon_size_24,
                      height: AppSizes.icon_size_24,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: AppSizes.mp_v_2,
                    ),
                    Text(
                      "Check your e-mail",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.displayOneBold,
                    ),
                    SizedBox(
                      height: AppSizes.mp_v_2,
                    ),

                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: AppSizes.mp_w_6),
                      child: Text(
                        "We sent your e-mail the password reset link Please check your e-mail.",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bodySmallBold
                            .copyWith(color: AppColors.grayDark),
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
