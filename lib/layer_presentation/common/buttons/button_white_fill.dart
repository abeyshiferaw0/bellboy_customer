import 'package:bellboy_customer/layer_data/models/enums.dart';
import 'package:bellboy_customer/layer_presentation/common/buttons/button_primary_fill.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonWhiteFill extends StatelessWidget {
  const ButtonWhiteFill({Key? key, required this.buttonSizeType, required this.text, required this.onTap, required this.isDisabled})
      : super(key: key);

  final ButtonSizeType buttonSizeType;
  final String text;
  final VoidCallback onTap;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  buttonSizeType == ButtonSizeType.SMALL  ? null : double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: AppColors.grayLight,
          backgroundColor: isDisabled ?AppColors.grayLighter:AppColors.whiteOff,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius_8),
          ),
        ),
        onPressed: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: buttonSizeType == ButtonSizeType.LARGE
                ? AppSizes.mp_v_2*0.9
                : buttonSizeType == ButtonSizeType.MEDIUM
                    ? AppSizes.mp_v_1*1.5
                    : AppSizes.mp_v_1*0.8,
            horizontal: AppSizes.mp_w_1,
          ),
          child: Text(
            text,
            style: AppTextStyles.bodyLargeBold.copyWith(
              color: AppColors.grayDark,
            ),
          ),
        ),
      ),
    );
  }
}

