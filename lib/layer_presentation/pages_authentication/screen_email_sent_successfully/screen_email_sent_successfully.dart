import 'package:bellboy_customer/config/app_router.dart';
import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/layer_data/models/enums.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_white_fill.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'widgets/dialog_email_resend.dart';

class ScreenEmailSentSuccessfully extends StatefulWidget {
  const ScreenEmailSentSuccessfully({Key? key}) : super(key: key);

  @override
  State<ScreenEmailSentSuccessfully> createState() => _ScreenEmailSentSuccessfullyState();
}

class _ScreenEmailSentSuccessfullyState extends State<ScreenEmailSentSuccessfully> {

  @override
  void initState() {

    Future.delayed(Duration(seconds: 2),(){

      Navigator.pushNamed(context, AppRouterPaths.screenSignUpDone);

    });

    super.initState();
  }

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
                      "We sent you an authentication e-mail!",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.displayOneBold,
                    ),
                    SizedBox(
                      height: AppSizes.mp_v_2,
                    ),
                    Material(
                      color: AppColors.primaryLighter,
                      borderRadius: BorderRadius.circular(AppSizes.radius_12),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.mp_w_4 * 1.2,
                          vertical: AppSizes.mp_v_1 * 1.5,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "bellboy@bellboy.com",
                              textAlign: TextAlign.center,
                              style: AppTextStyles.titleBold
                                  .copyWith(color: AppColors.primary),
                            ),
                            ButtonWhiteFill(
                              buttonSizeType: ButtonSizeType.SMALL,
                              text: 'Change',
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Center(
                                      child: DialogEmailResend(),
                                    );
                                  },
                                );
                              },
                              isDisabled: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppSizes.mp_v_2,
                    ),
                    Text(
                      "Press the authentication button at your e-mail to complete the membership registration.",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bodySmallBold
                          .copyWith(color: AppColors.grayDark),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_2),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSizes.mp_v_2),
                      child: Center(
                        child: Text(
                          "Didn’t get an e-mail?",
                          style: AppTextStyles.bodyLargeBold
                              .copyWith(color: AppColors.grayLight),
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_2),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: AppSizes.mp_v_2),
                      child: Center(
                        child: Text(
                          "Send again",
                          style: AppTextStyles.bodyLargeBold
                              .copyWith(color: AppColors.primary),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: AppSizes.mp_v_4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
