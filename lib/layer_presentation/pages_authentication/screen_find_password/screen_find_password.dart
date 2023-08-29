import 'package:bellboy_customer/config/app_router.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/layer_presentation/common/forms/text_input_login.dart';
import 'package:bellboy_customer/layer_presentation/common/navigation/top_nav_back_text.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:bellboy_customer/layer_data/models/enums.dart';

class ScreenFindPassword extends StatelessWidget {
  const ScreenFindPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///APP BAR
            const TopNavBackText(
              centerTitle: '',
              rightText: '',
              useHomeIcon: false,
            ),

            SizedBox(
              height: AppSizes.mp_v_2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find your password",
                    textAlign: TextAlign.start,
                    style: AppTextStyles.displayOneBold,
                  ),
                  SizedBox(
                    height: AppSizes.mp_v_4,
                  ),
                  const TextInputLogin(
                    hint: 'Email',
                  ),
                  SizedBox(
                    height: AppSizes.mp_v_4,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: AppSizes.mp_w_8*2),
                    child: Text(
                      "Enter the e-mail address that you registered. Let us send your e-mail password reset link.",
                      style: AppTextStyles.captionRegular.copyWith(color: AppColors.grayDark),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
              child: Column(
                children: [
                  ButtonPrimaryFill(
                    buttonSizeType: ButtonSizeType.LARGE,
                    isDisabled: false,
                    text: "Enter your E-mail",
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        AppRouterPaths.findAccountsDone,
                      );
                    },
                  ),
                  SizedBox(
                    height: AppSizes.mp_v_2,
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
