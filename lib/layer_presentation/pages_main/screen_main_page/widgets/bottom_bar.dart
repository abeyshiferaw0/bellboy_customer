import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.5.h,
      // color: AppColors.whiteOff,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 7.5.h,
              color: AppColors.whiteOff,
              child: Column(
                children: [
                  Divider(
                    color: AppColors.grayLighter,
                    height: 2,
                    thickness: 2,
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: AppSizes.mp_w_6,
                        ),
                        buildMaterialButton(
                          isSelected: true,
                          iconPath: R.ASSETS_ICONS_HOME_SVG,
                        ),
                        SizedBox(
                          width: AppSizes.mp_w_6 * 1.3,
                        ),
                        buildMaterialButton(
                          isSelected: false,
                          iconPath: R.ASSETS_ICONS_MEMOSVG,
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        buildMaterialButton(
                          isSelected: false,
                          iconPath: R.ASSETS_ICONS_SHOPPINGBAGSVG,
                        ),
                        SizedBox(
                          width: AppSizes.mp_w_6 * 1.3,
                        ),
                        buildMaterialButton(
                          isSelected: false,
                          iconPath: R.ASSETS_ICONS_PROFILESVG,
                        ),
                        SizedBox(
                          width: AppSizes.mp_w_6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(400),
              child: Container(
                // width: AppSizes.icon_size_6,
                // height: AppSizes.icon_size_6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primaryGradientStart,
                      AppColors.primaryGradientMiddle,
                      AppColors.primaryGradientEnd,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                ),
                child: Padding(
                  padding:  EdgeInsets.all(AppSizes.mp_w_4*1.2),
                  child: SvgPicture.asset(
                    R.ASSETS_ICONS_ORDERSVG,
                    width: AppSizes.icon_size_6,
                    color: AppColors.whiteOff,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  MaterialButton buildMaterialButton({
    required bool isSelected,
    required String iconPath,
  }) {
    return MaterialButton(
      onPressed: () {},
      minWidth: AppSizes.icon_size_6,
      height: AppSizes.icon_size_6 * 3,
      shape: const CircleBorder(),
      visualDensity: VisualDensity.compact,
      child: SvgPicture.asset(
        iconPath,
        width: AppSizes.icon_size_6*1.1,
        color: isSelected ?  AppColors.primary : AppColors.grayDark,
      ),
    );
  }
}
