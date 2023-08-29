import 'package:bellboy_customer/config/app_router.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/layer_presentation/common/forms/text_input_login.dart';
import 'package:bellboy_customer/layer_presentation/common/navigation/top_nav_back_text.dart';
import 'package:bellboy_customer/layer_presentation/pages_authentication/screen_login/widgets/dialog_find_email.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:bellboy_customer/layer_data/models/enums.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///PAGE TITLE
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log in",
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
                        height: AppSizes.mp_v_2,
                      ),
                      const TextInputLogin(
                        hint: 'Password',
                        isPassword: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
                child: Column(
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Center(
                                  child: DialogFindEmail(),
                                );
                              },
                            );
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: AppSizes.mp_v_2),
                            child: Center(
                              child: Text(
                                "Find e-mail",
                                style: AppTextStyles.bodySmallUnderlineRegular
                                    .copyWith(color: AppColors.grayLight),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppSizes.mp_v_2,
                          child: VerticalDivider(
                            color: AppColors.grayLighter,
                            thickness: 2,
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AppRouterPaths.findPassword,
                            );
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: AppSizes.mp_v_2),
                            child: Center(
                              child: Text(
                                "Find password",
                                style: AppTextStyles.bodySmallUnderlineRegular
                                    .copyWith(color: AppColors.grayLight),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ButtonPrimaryFill(
                      buttonSizeType: ButtonSizeType.LARGE,
                      isDisabled: true,
                      text: "Log in",
                      onTap: () {},
                    ),
                    SizedBox(
                      height: AppSizes.mp_v_2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
