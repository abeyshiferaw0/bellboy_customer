import 'package:bellboy_customer/const/resource.dart';
import 'package:bellboy_customer/theme/app_colors.dart';
import 'package:bellboy_customer/theme/app_sizes.dart';
import 'package:bellboy_customer/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckBox extends StatefulWidget {
  const CheckBox(
      {Key? key, required this.isInitSelected, required this.checkBoxSize})
      : super(key: key);

  final bool isInitSelected;
  final CheckBoxSize checkBoxSize;

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {

  bool isSelected = false;

  @override
  void initState() {

    ///
    isSelected = widget.isInitSelected;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        setState(() {

          isSelected=!isSelected;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            //color: Colors.red,
            child: Padding(
              padding: getCheckPadding(),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary :  AppColors.whiteOff,
                  borderRadius: BorderRadius.circular(AppSizes.radius_12 * 4),
                  border: Border.all(
                    color: isSelected ? AppColors.primary : AppColors.grayLighter,
                    width: getBorderWidth(),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.mp_w_1),
                  child: SvgPicture.asset(
                    R.ASSETS_ICONS_CHECKSVG,
                    color: isSelected ? AppColors.whiteOff : AppColors.grayLighter,
                    width: getCheckWidth(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: AppSizes.mp_w_1 / 2,
          ),
          Text(
            "I agree with all the terms",
            style: getCheckTextStyle(),
          ),
        ],
      ),
    );
  }

  getCheckWidth() {
    if (widget.checkBoxSize == CheckBoxSize.SMALL) {
      return AppSizes.icon_size_4;
    }
    if (widget.checkBoxSize == CheckBoxSize.MEDIUM) {
      return AppSizes.icon_size_6 * 0.8;
    }
    if (widget.checkBoxSize == CheckBoxSize.LARGE) {
      return AppSizes.icon_size_6;
    }
  }

  double getBorderWidth() {
    if (widget.checkBoxSize == CheckBoxSize.SMALL) {
      return 2;
    }
    if (widget.checkBoxSize == CheckBoxSize.MEDIUM) {
      return 1;
    }
    if (widget.checkBoxSize == CheckBoxSize.LARGE) {
      return 2;
    }
    return 2;
  }

  getCheckPadding() {
    if (widget.checkBoxSize == CheckBoxSize.SMALL) {
      return EdgeInsets.all(AppSizes.mp_w_2 * 1.3);
    }
    if (widget.checkBoxSize == CheckBoxSize.MEDIUM) {
      return EdgeInsets.all(AppSizes.mp_w_2 * 1.3);
    }
    if (widget.checkBoxSize == CheckBoxSize.LARGE) {
      return EdgeInsets.all(AppSizes.mp_w_2 * 1.2);
    }
    return EdgeInsets.all(AppSizes.mp_w_2);
  }

  getCheckTextStyle() {
    if (widget.checkBoxSize == CheckBoxSize.SMALL) {
      return AppTextStyles.bodySmallRegular.copyWith(
        color: isSelected ? AppColors.grayDark:AppColors.grayDefault,
      );
    }
    if (widget.checkBoxSize == CheckBoxSize.MEDIUM) {
      return AppTextStyles.bodySmallRegular.copyWith(
        color: isSelected ? AppColors.grayDark:AppColors.grayDefault,
      );
    }
    if (widget.checkBoxSize == CheckBoxSize.LARGE) {
      return AppTextStyles.bodyLargeRegular.copyWith(
        color: isSelected ? AppColors.grayDark:AppColors.grayDefault,
      );
    }
    return AppTextStyles.bodySmallRegular.copyWith(
      color: AppColors.grayDefault,
    );
  }
}

enum CheckBoxSize { SMALL, MEDIUM, LARGE }
