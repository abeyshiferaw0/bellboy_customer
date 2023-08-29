import 'package:bellboy_customer/config/app_router.dart';
import 'package:bellboy_customer/layer_data/models/enums.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_gray_scale_outline.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/layer_presentation/common/forms/text_input_login.dart';
import 'package:bellboy_customer/layer_presentation/common/navigation/top_nav_close_text.dart';
import 'package:bellboy_customer/layer_presentation/pages_authentication/screen_login/widgets/dialog_find_email.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';

class ScreenPhoneNumberVerification extends StatelessWidget {
  const ScreenPhoneNumberVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///APP BAR
            const TopNavCloseText(
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
                    "Mobile verification",
                    textAlign: TextAlign.start,
                    style: AppTextStyles.displayOneBold,
                  ),
                  SizedBox(
                    height: AppSizes.mp_v_1,
                  ),
                  Text(
                    "Before ordering, we need your phone number.",
                    textAlign: TextAlign.start,
                    style: AppTextStyles.bodySmallRegular
                        .copyWith(color: AppColors.grayDark),
                  ),
                  SizedBox(
                    height: AppSizes.mp_v_4,
                  ),
                  CountryCodePicker(
                    onChanged: print,
                    initialSelection: 'IT',
                    padding: EdgeInsets.zero,
                    favorite: ['+39', 'FR'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                    builder: (CountryCode? countryCode) {
                      if (countryCode != null) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: AppSizes.mp_w_2,
                                    ),
                                    Text(
                                      countryCode.dialCode!,
                                      style: AppTextStyles.bodyLargeBold,
                                    ),
                                    SizedBox(
                                      width: AppSizes.mp_w_4,
                                    ),
                                    Image.asset(
                                      countryCode.flagUri!,
                                      package: 'country_code_picker',
                                      width: 27,
                                    ),
                                    SizedBox(
                                      width: AppSizes.mp_w_6,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AppSizes.mp_v_2,
                                ),
                                SizedBox(
                                  width: 24.w,
                                  child: Divider(
                                    color: AppColors.grayLighter,
                                    thickness: 1,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: AppSizes.mp_w_4,
                            ),
                            Expanded(
                              child: const TextInputLogin(
                                hint: 'Email',
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: AppSizes.mp_v_4,
                  ),
                  OTPTextField(
                    length: 5,
                    width: 100.w,
                    fieldWidth: AppSizes.icon_size_16,
                    otpFieldStyle: OtpFieldStyle(
                      borderColor: AppColors.grayDark,
                      focusBorderColor: AppColors.grayDark,

                      disabledBorderColor: AppColors.grayLight,
                      enabledBorderColor: AppColors.grayLight,
                      errorBorderColor: AppColors.danger,
                    ),
                    style: AppTextStyles.bodyLargeBold,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    contentPadding: EdgeInsets.only(bottom: AppSizes.mp_v_2),
                    onCompleted: (pin) {},
                  ),
                  SizedBox(
                    height: AppSizes.mp_v_2,
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: ButtonGrayScaleOutline(
                      buttonSizeType: ButtonSizeType.SMALL,
                      text: 'Resend',
                      onTap: () {},
                      isDisabled: false,
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
                              "I didn’t receive a code",
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
                    isDisabled: false,
                    text: "Done",
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        AppRouterPaths.findEmailDone,
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
