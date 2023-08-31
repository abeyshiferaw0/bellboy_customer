import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class OrderRequestCard extends StatelessWidget {
  const OrderRequestCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(AppSizes.radius_20),
          bottomLeft: Radius.circular(AppSizes.radius_20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.mp_w_4,
          vertical: AppSizes.mp_v_4 * 0.8,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 20.h,
                width: double.infinity,
                //  color: Colors.red,
                child: const Column(
                  children: [],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                height: 20.h,
                width: double.infinity,
                //    margin: EdgeInsets.all(AppSizes.mp_w_4),
                //  decoration: BoxDecoration(
                // //   color: Colors.green,
                //    boxShadow: [
                //      BoxShadow(
                //        color: AppColors.primary,
                //        offset: Offset(0, 4),
                //        blurRadius: 8,
                //        spreadRadius: 2,
                //      ),
                //    ],
                //  ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: SvgPicture.asset(
                        R.ASSETS_IMAGES_IMAGE_BG_ORDER_REQUEST_CARD_SVG,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: AppSizes.mp_v_4,
                        left: AppSizes.mp_w_4*1.2,
                        bottom: AppSizes.mp_v_1,
                      ),
                      child: Row(
                        children: [
                          Container(
                            //color: Colors.blue,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  R.ASSETS_ICONS_LOCATIONSVG,
                                  width: AppSizes.icon_size_6,
                                  color: AppColors.grayDark,
                                ),
                                SizedBox(
                                  height: AppSizes.mp_v_1,
                                ),
                                SizedBox(
                                  height: AppSizes.icon_size_6,
                                  child: VerticalDivider(
                                    color: AppColors.grayLight,
                                    thickness: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: AppSizes.mp_v_1,
                                ),
                                SvgPicture.asset(
                                  R.ASSETS_ICONS_FLAGROUNDEDSVG,
                                  color: AppColors.primary,
                                  width: AppSizes.icon_size_6,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: AppSizes.mp_w_4 * 0.8,
                          ),
                          Container(
                            //color: Colors.blue,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Here now",
                                  style:
                                      AppTextStyles.bodyLargeRegular.copyWith(
                                    color: AppColors.grayDark,
                                  ),
                                ),
                                SizedBox(
                                  height: AppSizes.mp_v_1,
                                ),
                                SizedBox(
                                  height: AppSizes.icon_size_6,
                                ),
                                SizedBox(
                                  height: AppSizes.mp_v_1,
                                ),
                                Text(
                                  "Delivery address",
                                  style: AppTextStyles.titleBold.copyWith(
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSizes.radius_20 * 5,
                              ),
                              border: Border.all(
                                color: AppColors.grayLight,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(AppSizes.mp_w_4*0.7),
                              child: SvgPicture.asset(
                                R.ASSETS_ICONS_SWAPSVG,
                                width: AppSizes.icon_size_6,
                                color: AppColors.grayLighter,
                              ),
                            ),
                          ),
                          SizedBox(width: AppSizes.mp_w_8,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 3.w,
              top: 6.h,
              child: Image.asset(
                R.ASSETS_IMAGES_IMAGE_MAIN_PACKAGE_PNG,
                fit: BoxFit.cover,
                height: 16.h,
              ),
            ),
            Positioned(
              left: 0.w,
              top: 6.h,
              child: Image.asset(
                R.ASSETS_LOGOS_BELLBOY_LOGO_WHITE_PNG,
                fit: BoxFit.cover,
                height: 4.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MiddleBottomBarItem extends StatelessWidget {
  const MiddleBottomBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){},
      tooltip: 'Increment',
      child:  Icon(Icons.add),
      elevation: 4.0,
    );
  }
}
