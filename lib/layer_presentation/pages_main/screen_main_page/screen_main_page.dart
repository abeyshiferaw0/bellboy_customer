import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_data/models/enums.dart';
import 'package:bellboy_customer/layer_presentation/pages_main/screen_main_page/widgets/bottom_bar.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'widgets/delivery_progress_card.dart';
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
                const OrderRequestCard(),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(
                        top: AppSizes.mp_v_1, bottom: AppSizes.mp_v_16),
                    children: [
                      const DeliveryProgressCard(
                        deliveryCardProgressStatus:
                            DeliveryCardProgressStatus.STAND_BY,
                      ),
                      SizedBox(
                        height: AppSizes.mp_v_1,
                      ),
                      const DeliveryProgressCard(
                        deliveryCardProgressStatus:
                            DeliveryCardProgressStatus.STAND_BY_BOOKED,
                      ),
                      SizedBox(
                        height: AppSizes.mp_v_1,
                      ),
                      const DeliveryProgressCard(
                        deliveryCardProgressStatus:
                            DeliveryCardProgressStatus.MATCHED,
                      ),
                      SizedBox(
                        height: AppSizes.mp_v_8,
                      ),
                      buildAdWidget(),
                      SizedBox(
                        height: AppSizes.mp_v_6,
                      ),
                      buildBellboyInfo(),
                      SizedBox(
                        height: AppSizes.mp_v_4,
                      ),
                    ],
                  ),
                  // child: ListView.separated(
                  //   itemCount: 6,
                  //   padding: EdgeInsets.only(bottom: AppSizes.mp_v_12,top: AppSizes.mp_v_1,),
                  //   separatorBuilder: (context, index) {
                  //     return SizedBox(
                  //       height: AppSizes.mp_v_1,
                  //     );
                  //   },
                  //   itemBuilder: (context, index) {
                  //     return DeliveryProgressCard(
                  //       deliveryCardProgressStatus: index == 0
                  //           ? DeliveryCardProgressStatus.STAND_BY
                  //           : index == 1
                  //               ? DeliveryCardProgressStatus.STAND_BY_BOOKED
                  //               : DeliveryCardProgressStatus.MATCHED,
                  //     );
                  //   },
                  // ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: BottomBar(),
            ),
          ],
        ),
      ),
    );
  }

  buildAdWidget() {
    return Container(
      height: AppSizes.icon_size_12 * 2.5,
      color: Colors.red,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              R.ASSETS_IMAGES_IMAGE_MAIN_AD_BG_PNG,
              height: AppSizes.icon_size_12 * 2.5,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              color: AppColors.black.withOpacity(0.2),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "3 Ways to get\nfree delivery service",
              textAlign: TextAlign.center,
              style: AppTextStyles.titleRegular
                  .copyWith(color: AppColors.whiteOff),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.mp_w_4,
                vertical: AppSizes.mp_v_2,
              ),
              child: Material(
                color: AppColors.dim,
                borderRadius: BorderRadius.circular(AppSizes.radius_20),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.mp_w_4,
                    vertical: AppSizes.mp_v_1 / 2,
                  ),
                  child: Text(
                    "5/10",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.captionBold
                        .copyWith(color: AppColors.whiteOff),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildBellboyInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          R.ASSETS_LOGOS_BELLBOY_LOGO_GRAYSCALE_PNG,
          width: AppSizes.icon_size_28,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: AppSizes.mp_v_2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(R.ASSETS_ICONS_CUSTOMER_CENTER_OFF_SVG),
            SizedBox(
              width: AppSizes.mp_w_4,
            ),
            Text(
              "0430 027 934",
              style: AppTextStyles.bodyLargeBold.copyWith(
                color: AppColors.grayDefault,
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.mp_v_1,
        ),
        Text(
          "Mon - Fri / AM 10:00 ~ PM 06:00",
          style: AppTextStyles.captionRegular.copyWith(
            color: AppColors.grayDefault,
          ),
          // style: GoogleFonts.jost(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
