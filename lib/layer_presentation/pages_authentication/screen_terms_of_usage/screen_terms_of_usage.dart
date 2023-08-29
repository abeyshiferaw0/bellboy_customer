import 'package:bellboy_customer/config/app_router.dart';
import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_presentation/common/app_icon_button.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/layer_presentation/common/forms/check_box.dart';
import 'package:bellboy_customer/layer_presentation/common/navigation/top_nav_back_icon.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:bellboy_customer/layer_data/models/enums.dart';

class ScreenTermsOfUsage extends StatelessWidget {
  const ScreenTermsOfUsage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///APP BAR
            const TopNavBackIcon(
              centerTitle: '',
              useRightIcon: false,
              useHomeIcon: false,
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
                      "Accept Terms & Review\nPrivacy Notice",
                      textAlign: TextAlign.start,
                      style: AppTextStyles.displayOneBold,
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CheckBox(
                                isInitSelected: false,
                                checkBoxSize: CheckBoxSize.LARGE,
                              ),
                              const Expanded(child: SizedBox(),),
                              AppSvgButton(
                                imagePath: R.ASSETS_ICONS_CHEVRONRIGHTSVG,
                                iconColor: AppColors.grayDefault,
                                onPressed: () {},
                                size: AppSizes.icon_size_6,
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: AppSizes.mp_v_1/2),
                            child: Divider(
                              color: AppColors.grayLighter,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            children: [
                              const CheckBox(
                                isInitSelected: false,
                                checkBoxSize: CheckBoxSize.MEDIUM,
                              ),
                              const Expanded(child: SizedBox(),),
                              AppSvgButton(
                                imagePath: R.ASSETS_ICONS_CHEVRONRIGHTSVG,
                                iconColor: AppColors.grayLight,
                                onPressed: () {},
                                size: AppSizes.icon_size_6,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const CheckBox(
                                isInitSelected: false,
                                checkBoxSize: CheckBoxSize.MEDIUM,
                              ),
                              const Expanded(child: SizedBox(),),
                              AppSvgButton(
                                imagePath: R.ASSETS_ICONS_CHEVRONRIGHTSVG,
                                iconColor: AppColors.grayLight,
                                onPressed: () {},
                                size: AppSizes.icon_size_6,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: AppSizes.mp_v_4,
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
                    child: ButtonPrimaryFill(
                      buttonSizeType: ButtonSizeType.LARGE,
                      isDisabled: false,
                      text: "Next",
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRouterPaths.signUp);
                      },
                    ),
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
