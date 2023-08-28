import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_data/models/enums.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_white_fill.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenFindEmailDone extends StatelessWidget {
  const ScreenFindEmailDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_6),
          child: buildEmailNotFound(),
        ),
      ),
    );
  }

  Column buildEmailNotFound() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "No matching\nE-mail found.",
                textAlign: TextAlign.center,
                style: AppTextStyles.displayOneBold,
              ),
              SizedBox(
                height: AppSizes.mp_v_2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_8),
                child: Text(
                  "Check your phone number again or contact bellboy.",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bodySmallBold.copyWith(
                    color: AppColors.grayDark,
                  ),
                ),
              ),
              SizedBox(height: AppSizes.mp_v_4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(R.ASSETS_ICONS_CUSTOMERSERVICESVG,color: AppColors.grayLight,),
                  SizedBox(width: AppSizes.mp_w_2,),
                  Text(
                    "0430 027 934",
                    style: AppTextStyles.bodySmallBold.copyWith(
                      color: AppColors.grayDark,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        ButtonPrimaryFill(
          buttonSizeType: ButtonSizeType.LARGE,
          isDisabled: false,
          text: "Go to log in",
          onTap: () {},
        ),
        SizedBox(
          height: AppSizes.mp_v_4,
        ),
      ],
    );
  }

  Column buildEmailDound() {
    return Column(
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
                "We found your e-mail!",
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
                        text: 'Copy',
                        onTap: () {},
                        isDisabled: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ButtonPrimaryFill(
          buttonSizeType: ButtonSizeType.LARGE,
          isDisabled: false,
          text: "Go to log in",
          onTap: () {},
        ),
        SizedBox(
          height: AppSizes.mp_v_4,
        ),
      ],
    );
  }
}
