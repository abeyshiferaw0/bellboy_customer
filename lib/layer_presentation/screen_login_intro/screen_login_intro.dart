import 'package:bellboy_customer/config/app_router.dart';
import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_presentation/common/app_toasts.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/layer_presentation/common/navigation/top_nav_close_text.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScreenLoginIntro extends StatelessWidget {
  const ScreenLoginIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///APP BAR
            TopNavCloseText(
              centerTitle: '',
              rightText: '',
            ),

            SizedBox(
              height: AppSizes.mp_v_4,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///PAGE TITLE
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
                    child: Text(
                      "Get your\nFast delivery service",
                      textAlign: TextAlign.start,
                      style: AppTextStyles.displayTwoBold,
                    ),
                  ),

                  Expanded(
                    child: Container(
                      //color: Colors.red,
                      child: Image.asset(
                        R.ASSETS_IMAGES_IMG_LOGININTRO_PNG,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
                    child: ButtonPrimaryFill(
                      buttonSizeType: ButtonSizeType.LARGE,
                      isDisabled: false,
                      text: "Log in",
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRouterPaths.login);
                        AppToasts.showSuccess("Success toast message");
                      },
                    ),
                  ),

                  SizedBox(
                    height: AppSizes.mp_v_2,
                  ),

                  MaterialButton(

                    onPressed: () {},

                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSizes.mp_v_2),
                      child: Center(
                        child: Text(
                          "New to Bellboy? Sign up!",
                          style: AppTextStyles.bodyLargeBold
                              .copyWith(color: AppColors.grayDefault),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
