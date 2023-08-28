import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_presentation/common/app_icon_button.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopNavBackIcon extends StatelessWidget {
  const TopNavBackIcon(
      {Key? key,
      required this.centerTitle,
      required this.useRightIcon,
      required this.useHomeIcon})
      : super(key: key);

  final String centerTitle;
  final bool useRightIcon;
  final bool useHomeIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.mp_w_2,
      ),
      height: AppSizes.mp_v_6,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppSvgButton(
                  imagePath: R.ASSETS_ICONS_ARROWLEFTTHINSVG,
                  onPressed: () {},
                  size: AppSizes.icon_size_8 * 0.9,
                ),
                SizedBox(
                  width: AppSizes.mp_w_1,
                ),
                useHomeIcon
                    ? AppSvgButton(
                        imagePath: R.ASSETS_ICONS_HOME_SVG,
                        onPressed: () {},
                        size: AppSizes.icon_size_8 * 0.9,
                      )
                    : SizedBox(),
              ],
            ),
          ),
          Center(
            child: Text(
              centerTitle,
              style: AppTextStyles.titleBold,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: useRightIcon
                ? AppSvgButton(
                    imagePath: R.ASSETS_ICONS_ALARMSVG,
                    onPressed: () {},
                    size: AppSizes.icon_size_8 ,
              iconColor: AppColors.blackLight,
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
