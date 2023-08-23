import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppToasts {
  static showSuccess(String text) {
    BotToast.showCustomNotification(
      toastBuilder: (cancelFunc) {
        return ToastSuccessWidget(
          text: text,
        );
      },
      duration: const Duration(seconds: 2),
      animationDuration: const Duration(milliseconds: 150),
      backButtonBehavior: BackButtonBehavior.ignore,
    );
  }

  static showError(String text) {
    BotToast.showCustomNotification(
      toastBuilder: (cancelFunc) {
        return ToastErrorWidget(text: text,);
      },
      duration: const Duration(seconds: 2),
      animationDuration: const Duration(milliseconds: 150),
      backButtonBehavior: BackButtonBehavior.ignore,
    );
  }
}

class ToastSuccessWidget extends StatelessWidget {
  const ToastSuccessWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        BotToast.cleanAll();
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.toastMessageBackground,
          borderRadius: BorderRadius.circular(AppSizes.radius_20*2),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: AppSizes.mp_w_4,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.mp_w_4*0.7,
          vertical: AppSizes.mp_v_1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              R.ASSETS_ICONS_DONEROUNDSVG,
              color: AppColors.success,
              width: AppSizes.icon_size_8,
              height: AppSizes.icon_size_8,
            ),
            SizedBox(
              width: AppSizes.mp_w_2,
            ),
            Text(
              text,
              style: AppTextStyles.bodySmallBold.copyWith(
                color: AppColors.whiteOff,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToastErrorWidget extends StatelessWidget {
  const ToastErrorWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        BotToast.cleanAll();
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.toastMessageBackground,
          borderRadius: BorderRadius.circular(AppSizes.radius_20*2),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: AppSizes.mp_w_4,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.mp_w_4*0.7,
          vertical: AppSizes.mp_v_1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              R.ASSETS_ICONS_DANGER_CIRCLE_SVG,
              color: AppColors.danger,
              width: AppSizes.icon_size_8,
              height: AppSizes.icon_size_8,
            ),
            SizedBox(
              width: AppSizes.mp_w_2,
            ),
            Text(
              text,
              style: AppTextStyles.bodySmallBold.copyWith(
                color: AppColors.whiteOff,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
