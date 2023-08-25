import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenEmailSentDone extends StatelessWidget {
  const ScreenEmailSentDone({Key? key}) : super(key: key);

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
                    SizedBox(
                      width: AppSizes.icon_size_24,
                      height: AppSizes.icon_size_24,
                      child: Stack(
                        children: [
                          SvgPicture.asset(
                            R.ASSETS_ICONS_USER_OFF_SVG,
                            width:double.infinity,
                            height: double.infinity,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: AppSizes.radius_8*2.7,
                              backgroundColor: AppColors.primary,
                              child: SvgPicture.asset(R.ASSETS_ICONS_RELOAD2SVG,color: AppColors.whiteOff,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizes.mp_v_4,),
                    Text(
                      "Recover Account",
                      style: AppTextStyles.displayOneBold,
                    ),
                    SizedBox(
                      height: AppSizes.mp_v_1,
                    ),
                    Text(
                      "Your account is currently applying for withdrawal. Do you want to recover your account again?",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bodySmallBold,
                    ),
                  ],
                ),
              ),
              ButtonPrimaryFill(
                buttonSizeType: ButtonSizeType.LARGE,
                isDisabled: false,
                text: "Recover my account",
                onTap: () {},
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
