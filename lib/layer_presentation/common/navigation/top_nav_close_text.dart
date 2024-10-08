import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_presentation/common/app_icon_button.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class TopNavCloseText extends StatelessWidget {
  const TopNavCloseText(
      {Key? key,
      required this.centerTitle,
      required this.rightText,
      required this.useHomeIcon})
      : super(key: key);

  final String centerTitle;
  final String rightText;
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
                  imagePath: R.ASSETS_ICONS_CLOSE_SVG,
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
            child: Text(
              rightText,
              style: AppTextStyles.titleBold.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
