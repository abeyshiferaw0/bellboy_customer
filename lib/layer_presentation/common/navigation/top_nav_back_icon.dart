import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopNavBackIcon extends StatelessWidget {
  const TopNavBackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.mp_v_1,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            R.ASSETS_ICONS_BELL_SVG,
            color: AppColors.whiteOff,
          ),
        ],
      ),
    );
  }
}
