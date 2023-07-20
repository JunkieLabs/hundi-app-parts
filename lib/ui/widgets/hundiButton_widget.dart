import 'package:flutter/material.dart';
import 'package:hundi_flutter_parts/ui/res/styles/text_styles.dart';
import 'package:hundi_flutter_parts/ui/res/values/dimens.dart';
import 'package:hundi_flutter_parts/ui/res/values/gaps.dart';

class HundiButtonWidget extends StatelessWidget {
  // static const TYPE_ICON = 0;
  // static const TYPE_DEFAULT = 1;
  static const WIDTH_WRAP = 0;
  static const WIDTH_EXPANDED = 1;

  final String? mTxt;
  final IconData? mIconData;
  final bool mIsSecondary;
  final bool mIsRtl;
  final bool mIsCompact;
  final VoidCallback? mOnClicked;

  final int mWidthType;

  // Color _mColorPrimaryHigh = Colors.greenAccent;
  // Color _mColorPrimary = Colors.green;

  Color _mColorBackgroundHigh = Colors.greenAccent;
  Color _mColorBackground = Colors.green;

  HundiButtonWidget({
    Key? key,
    required this.mOnClicked,
    this.mTxt,
    this.mIconData,
    int widthType = WIDTH_WRAP,
    bool isSecondary = false,
    bool isRtl = false,
    bool isCompact = false,
  })  : mWidthType = widthType,
        mIsSecondary = isSecondary,
        mIsRtl = isRtl,
        mIsCompact = isCompact,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    prepareTheme(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // elevation: 0,
        padding: EdgeInsets.zero, backgroundColor: Colors.transparent,
        minimumSize: buttonSize(),
        shadowColor: _mColorBackground.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),

        // primary: Colors.transparent,
        // onPrimary: onSurfaceDisabled,

        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(18.0),
        // ),
      ),
      onPressed:mOnClicked,// mOnClicked!=null ? () => {mOnClicked?.call()} : null,
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: const Alignment(0, -1),
              end: const Alignment(0, 1),
              colors: [_mColorBackgroundHigh, _mColorBackground]),
          borderRadius: const BorderRadius.all(Radius.circular(18)),
        ),
        child: getChild(),
      ),

    );
  }

  Widget getChild() {
    var padding = mIsCompact
        ? const EdgeInsets.symmetric(
            horizontal: JlResDimens.dp_16, vertical: JlResDimens.dp_8)
        : const EdgeInsets.symmetric(
            horizontal: JlResDimens.dp_32, vertical: JlResDimens.dp_16);
    if (mIconData == null) {
      return Container(
        padding: padding,
        child: Row(
            textDirection: mIsRtl ? TextDirection.rtl : TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: rowAxisSize(),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                mTxt ?? "",
                style: mIsCompact
                    ? JlTextStyles.buttonSmall
                    : JlTextStyles.button,
              )
            ]),
      );
    } else if (mTxt == null) {
      return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: JlResDimens.dp_16, vertical: JlResDimens.dp_16),
        child: Icon(
          mIconData,
          size: 24,
        ),
      );
    } else {
      return Container(
        padding: padding,
        child: Row(
            textDirection: mIsRtl ? TextDirection.rtl : TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: rowAxisSize(),
            children: [
              mIconData != null
                  ? Icon(
                      mIconData,
                      size: 16,
                    )
                  : const SizedBox.shrink(),
              JlResGaps.h_4,
              Text(
                mTxt ?? "",
                style: JlTextStyles.button,
              ),
            ]),
      );
    }
  }

  Size buttonSize() {
    // debugPrint("buttonSize: $mWidthType");
    if (mWidthType == WIDTH_EXPANDED) {
      return const Size(double.maxFinite, double.minPositive);
    } else {
      // debugPrint("buttonSize 2: $mWidthType");
      return const Size(double.minPositive, double.minPositive);
    }
  }

  double buttonWidth() {
    if (mWidthType == WIDTH_EXPANDED) {
      return double.maxFinite;
    } else {
      return double.minPositive;
    }
  }

  MainAxisSize rowAxisSize() {
    if (mWidthType == WIDTH_EXPANDED) {
      return MainAxisSize.max;
    } else {
      return MainAxisSize.min;
    }
  }

  prepareTheme(BuildContext context) {
    // if (mIsSecondary) {
    //   _mColorBackgroundHigh = JlThemeHelper.colorBlend(
    //       context,
    //       TbThemeColor.surface,
    //       TbThemeColor.secondary,
    //       TbColorEmphasize.medium);
    //   _mColorBackground = Theme.of(context).colorScheme.secondary;
    // } else {
    //   _mColorBackgroundHigh = JlThemeHelper.colorBlend(context,
    //       TbThemeColor.surface, TbThemeColor.primary, TbColorEmphasize.medium);
    //   _mColorBackground = Theme.of(context).colorScheme.primary;
    // }
  }
}
