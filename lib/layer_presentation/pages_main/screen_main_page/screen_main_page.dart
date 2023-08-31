import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_presentation/pages_main/screen_main_page/widgets/bottom_bar.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'widgets/order_request_card.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.primary,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                OrderRequestCard(),
                Expanded(
                  child: ListView.separated(
                    itemCount: 6,
                    padding: EdgeInsets.only(bottom: AppSizes.mp_v_12),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: AppSizes.mp_v_2,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
                        height: 33.h,
                        child: Stack(
                          children: [
                            Positioned(
                              top: AppSizes.mp_v_4,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppSizes.radius_12*3),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.grayLighter.withOpacity(0.1),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      offset: Offset(0, 6),
                                    ),
                                  ],
                                ),
                                child: SvgPicture.asset(
                                  R.ASSETS_IMAGES_IMAGE_BG_ORDER_REQUEST_CARD_SVG,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Image.asset(
                                R.ASSETS_IMAGES_BIKE_PNG,
                                width: AppSizes.icon_size_24,
                                height: AppSizes.icon_size_24,
                              ),
                            ),
                            Positioned(
                              left: AppSizes.mp_w_4,
                              top: AppSizes.mp_v_4*1.4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.primaryLighter,
                                  borderRadius:
                                      BorderRadius.circular(AppSizes.radius_20 * 2),
                                  border: Border.all(
                                      color: AppColors.primary, width: 2),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSizes.mp_w_4,
                                  vertical: AppSizes.mp_v_1 / 2,
                                ),
                                child: Text(
                                  "Stand-by",
                                  style: AppTextStyles.bodySmallBold
                                      .copyWith(color: AppColors.primary),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizes.mp_w_4,
                                    vertical: AppSizes.mp_v_2*1.2,),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          R.ASSETS_ICONS_FLAGROUNDEDSVG,
                                          color: AppColors.primary,
                                          width: AppSizes.icon_size_6,
                                        ),
                                        SizedBox(
                                          width: AppSizes.mp_w_2,
                                        ),
                                        Text("Arndell Park Bakery",
                                            style: AppTextStyles.bodyLargeBold
                                                .copyWith(color: AppColors.black)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: AppSizes.mp_v_2,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Divider(
                                              color: AppColors.grayLighter,
                                              thickness: 9,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: AppSizes.mp_w_6,
                                        ),
                                        Text(
                                          "0/3",
                                          style: AppTextStyles.menuBold.copyWith(
                                              color: AppColors.blackLight),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: AppSizes.mp_v_2*1.6,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              AppColors.grayLight.withOpacity(0.3),
                                          radius: AppSizes.icon_size_6 * 0.9,
                                          child: SvgPicture.asset(
                                            R.ASSETS_ICONS_PROFILESVG,
                                            color: AppColors.grayLight,
                                            width: AppSizes.icon_size_8 * 0.9,
                                          ),
                                        ),
                                        SizedBox(
                                          width: AppSizes.mp_w_4,
                                        ),
                                        Text(
                                          "Finding rider",
                                          style: AppTextStyles.bodySmallBold
                                              .copyWith(
                                                  color: AppColors.grayDefault),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Align(alignment: Alignment.bottomLeft,child: BottomBar(),),
          ],
        ),
      ),
    );
  }
}
