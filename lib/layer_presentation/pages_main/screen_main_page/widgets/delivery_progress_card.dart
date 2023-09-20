import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/layer_data/models/enums.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class DeliveryProgressCard extends StatelessWidget {
  const DeliveryProgressCard(
      {Key? key, required this.deliveryCardProgressStatus})
      : super(key: key);

  final DeliveryCardProgressStatus deliveryCardProgressStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSizes.mp_w_4),
      height: deliveryCardProgressStatus == DeliveryCardProgressStatus.MATCHED
          ? 38.h
          : 28.h,
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
                borderRadius: BorderRadius.circular(AppSizes.radius_12 * 3),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grayLighter.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 12,
                    offset: const Offset(0, 6),
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
            child: Opacity(
              opacity: getImageIconOpacity(),
              child: Image.asset(
                getImageIcon(),
                height: AppSizes.icon_size_24 * 0.9,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            left: AppSizes.mp_w_4,
            top: AppSizes.mp_v_4 * 1.2,
            child: buildCardTag(),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(
                left: AppSizes.mp_w_4*0.8,
                right: AppSizes.mp_w_4*0.8,
                bottom: AppSizes.mp_v_2*0.8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ///WIDGET BASED ON STATUS
                  deliveryCardProgressStatus ==
                      DeliveryCardProgressStatus.MATCHED
                      ? buildMatchedTitle()
                      : buildStandByTitle(),
                  SizedBox(
                    height: AppSizes.mp_v_2*0.6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Row(
                          children: [
                            Expanded(
                              child: LinearProgressIndicator(
                                value: 0.5,
                                backgroundColor: AppColors.grayLighter,
                                color: AppColors.primary,
                                minHeight: 11,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            SizedBox(
                              width: AppSizes.mp_w_6,
                            ),
                            Text(
                              "0/3",
                              style: AppTextStyles.menuBold
                                  .copyWith(color: AppColors.blackLight),
                            ),
                          ],
                        ),
                      ),
                      deliveryCardProgressStatus ==
                          DeliveryCardProgressStatus.MATCHED
                          ? Padding(
                        padding: EdgeInsets.only(
                          top: AppSizes.mp_v_1,
                        ),
                        child: Text(
                          "Leaving soon!",
                          style: AppTextStyles.bodySmallRegular
                              .copyWith(
                            color: AppColors.grayDefault,
                          ),
                        ),
                      )
                          : const SizedBox(),
                    ],
                  ),
                  SizedBox(
                    height: AppSizes.mp_v_2 * 1.6,
                  ),
                  deliveryCardProgressStatus ==
                      DeliveryCardProgressStatus.MATCHED
                      ? buildMatchedBottomBar()
                      : buildStandByBottomBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildStandByBottomBar() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.grayLight.withOpacity(0.3),
          radius: AppSizes.icon_size_6 * 0.8,
          child: SvgPicture.asset(
            R.ASSETS_ICONS_PROFILESVG,
            color: AppColors.grayLight,
            width: AppSizes.icon_size_8 * 0.8,
          ),
        ),
        SizedBox(
          width: AppSizes.mp_w_2 * 1.2,
        ),
        Text(
          "Finding rider",
          style: AppTextStyles.bodySmallBold.copyWith(
            color: AppColors.grayDefault,
          ),
        ),
      ],
    );
  }

  Column buildMatchedBottomBar() {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.grayLight.withOpacity(0.3),
              radius: AppSizes.icon_size_6 * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.icon_size_28 * 2),
                child: Image.network("https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.jpg?s=2048x2048&w=is&k=20&c=WVJmGWutzcAz-oWOLFUZfZ3zbRZKZOSXo8mPLTrEMZY=",fit: BoxFit.fill,),
              ),
            ),
            SizedBox(
              width: AppSizes.mp_w_2 * 1.2,
            ),
            Text(
              "Christopher",
              style: AppTextStyles.bodySmallBold.copyWith(
                color: AppColors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.mp_v_2,
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.whiteOff,
            borderRadius: BorderRadius.circular(AppSizes.radius_20 * 2),
            border: Border.all(
              color: AppColors.grayLighter,
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                visualDensity: VisualDensity.compact,
                color: AppColors.primary,
                icon: SvgPicture.asset(
                  R.ASSETS_ICONS_CHATBOTSVG,
                  width: AppSizes.icon_size_6,
                ),
              ),
              SizedBox(
                height: AppSizes.icon_size_4,
                child: VerticalDivider(
                  color: AppColors.grayDefault,
                ),
              ),
              IconButton(
                onPressed: () {},
                visualDensity: VisualDensity.compact,
                icon: SvgPicture.asset(
                  R.ASSETS_ICONS_MESSAGESVG,
                  width: AppSizes.icon_size_6,
                  color: AppColors.grayDefault,
                ),
              ),
              SizedBox(
                height: AppSizes.icon_size_4,
                child: VerticalDivider(
                  color: AppColors.grayDefault,
                ),
              ),
              IconButton(
                onPressed: () {},
                visualDensity: VisualDensity.compact,
                icon: SvgPicture.asset(
                  R.ASSETS_ICONS_CALLINGSVG,
                  width: AppSizes.icon_size_6,
                  color: AppColors.grayDefault,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row buildStandByTitle() {
    return Row(
      children: [
        SvgPicture.asset(
          R.ASSETS_ICONS_FLAGROUNDEDSVG,
          color: getFlagColor(),
          width: AppSizes.icon_size_6,
        ),
        SizedBox(
          width: AppSizes.mp_w_2,
        ),
        Text(
          "Arndell Park Bakery",
          style: AppTextStyles.bodyLargeBold.copyWith(color: AppColors.black),
        ),
      ],
    );
  }

  Widget buildMatchedTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Material(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(AppSizes.radius_20),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.mp_w_4 * 0.8,
              vertical: AppSizes.mp_v_1 / 4,
            ),
            child: Text(
              "1",
              style: AppTextStyles.menuBold.copyWith(color: AppColors.whiteOff),
            ),
          ),
        ),
        SizedBox(
          width: AppSizes.mp_w_2,
        ),
        Text(
          "Bennelog point, Sydney",
          style: AppTextStyles.bodyLargeBold.copyWith(color: AppColors.black),
        ),
        const Expanded(child: SizedBox()),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.circle,
              color: AppColors.grayLight,
              size: AppSizes.icon_size_2 / 2,
            ),
            Icon(
              Icons.circle,
              color: AppColors.grayLight,
              size: AppSizes.icon_size_2 / 2,
            ),
            Icon(
              Icons.circle,
              color: AppColors.grayLight,
              size: AppSizes.icon_size_2 / 2,
            ),
            Icon(
              Icons.circle,
              color: AppColors.grayLight,
              size: AppSizes.icon_size_2 / 2,
            ),
            SvgPicture.asset(
              R.ASSETS_ICONS_FLAGROUNDEDSVG,
              color: AppColors.blackLight,
              width: AppSizes.icon_size_4 * 1.2,
            ),
          ],
        ),
      ],
    );
  }

  Container buildCardTag() {
    return Container(
      decoration: BoxDecoration(
        color: deliveryCardProgressStatus == DeliveryCardProgressStatus.STAND_BY
            ? AppColors.primaryLighter
            : deliveryCardProgressStatus ==
            DeliveryCardProgressStatus.STAND_BY_BOOKED
            ? AppColors.accent
            : AppColors.primary,
        borderRadius: BorderRadius.circular(AppSizes.radius_20 * 2),
        border: Border.all(
          color:
          deliveryCardProgressStatus == DeliveryCardProgressStatus.STAND_BY
              ? AppColors.primary
              : deliveryCardProgressStatus ==
              DeliveryCardProgressStatus.STAND_BY_BOOKED
              ? AppColors.accent
              : AppColors.primary,
          width: 2,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.mp_w_4 * 0.8,
        vertical: AppSizes.mp_v_1 / 3,
      ),
      child: Text(
        deliveryCardProgressStatus == DeliveryCardProgressStatus.STAND_BY
            ? "Stand-by"
            : deliveryCardProgressStatus ==
            DeliveryCardProgressStatus.STAND_BY_BOOKED
            ? "23/03 PM 12:00"
            : "Matched",
        style: AppTextStyles.bodySmallBold.copyWith(
          color:
          deliveryCardProgressStatus == DeliveryCardProgressStatus.STAND_BY
              ? AppColors.primary
              : AppColors.whiteOff,
        ),
      ),
    );
  }

  String getImageIcon() {
    if (deliveryCardProgressStatus == DeliveryCardProgressStatus.STAND_BY) {
      return R.ASSETS_IMAGES_BIKE_PNG;
    }
    if (deliveryCardProgressStatus ==
        DeliveryCardProgressStatus.STAND_BY_BOOKED) {
      return R.ASSETS_IMAGES_BICYCLE_PNG;
    }
    if (deliveryCardProgressStatus == DeliveryCardProgressStatus.MATCHED) {
      return R.ASSETS_IMAGES_BIKE_PNG;
    }
    return R.ASSETS_IMAGES_BIKE_PNG;
  }

  double getImageIconOpacity() {
    if (deliveryCardProgressStatus == DeliveryCardProgressStatus.STAND_BY) {
      return 0.4;
    }
    if (deliveryCardProgressStatus ==
        DeliveryCardProgressStatus.STAND_BY_BOOKED) {
      return 0.4;
    }
    if (deliveryCardProgressStatus == DeliveryCardProgressStatus.MATCHED) {
      return 1.0;
    }
    return 0.4;
  }

  getFlagColor() {
    if (deliveryCardProgressStatus == DeliveryCardProgressStatus.STAND_BY) {
      return AppColors.primary;
    }
    if (deliveryCardProgressStatus ==
        DeliveryCardProgressStatus.STAND_BY_BOOKED) {
      return AppColors.accent;
    }
    if (deliveryCardProgressStatus == DeliveryCardProgressStatus.MATCHED) {
      return AppColors.primary;
    }
    return AppColors.primary;
  }
}
