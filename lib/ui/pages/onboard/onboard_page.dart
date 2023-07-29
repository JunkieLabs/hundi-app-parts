import 'package:auto_route/auto_route.dart';
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hundi_flutter_parts/ui/pages/onboard/parts/onboard_illustration.dart';
import 'package:hundi_flutter_parts/ui/res/styles/text_styles.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_colors.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_display.dart';
import 'package:hundi_flutter_parts/ui/res/theme/theme_helper.dart';
import 'package:hundi_flutter_parts/ui/res/values/dimens.dart';
import 'package:hundi_flutter_parts/ui/res/values/gaps.dart';
import 'package:hundi_flutter_parts/ui/shared/color_picker/color_picker.dart';
import 'package:hundi_flutter_parts/ui/widgets/hundiButton_widget.dart';

@RoutePage()
class OnboardPage extends StatefulWidget {
  final String title;
  const OnboardPage({Key? key, this.title = 'OnboardPage'}) : super(key: key);
  @override
  OnboardPageState createState() => OnboardPageState();
}

class OnboardPageState extends State<OnboardPage> {
  late AppThemeColors themeColors;
  late AppThemeDisplay appThemeDisplay;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    themeColors = Theme.of(context).extension<AppThemeColors>() ??
        AppThemeColors.seedColor(seedColor: Color(0xFF6CE18D), isDark: false);
    appThemeDisplay = JlThemeHelper.prepareThemeMedia(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        automaticallyImplyLeading: false,
        // title: Text(widget.title),
        actions: [],
      ),
      body: Stack(
        children: [
          _widgetContents(context),
          ColorPickerWidget(
            onDragCompleted: (){},
            onDragStarted: (){},
            offset: Offset(screenWidth - 56, 200),
            seedColor: themeColors.seedColor,
           
          )
        ],
      ),
    );
  }

  /* ********************************************************************
   *                            widgets
   */

  _widgetContents(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JlResGaps.v_32,
        // Expanded(
        //   flex: 1,
        //   child: Container(
        //     decoration: const BoxDecoration(
        //       image: DecorationImage(
        //         image: AssetImage('assets/img/pic_onboard.png'),
        //         fit: BoxFit.fitHeight,
        //       ),
        //     ),
        //   ),
        // ),

        const Expanded(
          flex: 1,
          child: OnboardIllustrationWidget(),
        ),

        appThemeDisplay.isSamllHeight ? JlResGaps.v_24 : JlResGaps.v_32,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: JlResDimens.dp_24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text.rich(
                TextSpan(
                  text: 'A Record Book for Muddati ',
                  style: (appThemeDisplay.isSamllHeight
                          ? JlTextStyles.h2
                          : JlTextStyles.h1)
                      .copyWith(color: themeColors.onSurface),
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Hundi',
                            style: JlTextStyles.h1.copyWith(
                                fontSize: (appThemeDisplay.isSamllHeight
                                    ? JlResDimens.sp_32
                                    : JlResDimens.sp_42),
                                color: themeColors.primaryHigh),
                          ),
                          Container(
                              height: 2,
                              width: 60,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  themeColors.primary.withOpacity(0.0),
                                  themeColors.primaryHigh,
                                  // TbResColors.colorPrimaryDark
                                ]),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              JlResGaps.v_8,
              Text.rich(TextSpan(
                  text:
                      'Efficiently monitor your period-based Hundi groups with ease. ',
                  style: JlTextStyles.p1
                      .merge(TextStyle(color: themeColors.onSurfaceHigh)),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Know more',
                      style: JlTextStyles.p1.merge(
                        TextStyle(
                            color: themeColors.primaryHigh,
                            decoration: TextDecoration.underline),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // print('Terms of Service"');
                          // _openAbout();
                        },
                    )
                  ])),
            ],
          ),
        ),
        // JlResGaps.v_20,

        _widgetActions(context),
        JlResGaps.v_20,
        Align(
          alignment: Alignment.center,
          child: Text(
            "By continuing, you agree to our",
            style: JlTextStyles.p3.merge(
              TextStyle(color: themeColors.onSurfaceMedium),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text.rich(
            TextSpan(
              text: "",
              style: JlTextStyles.p3
                  .merge(TextStyle(color: themeColors.onSurface)),
              children: <InlineSpan>[
                TextSpan(
                  text: 'Privacy Policy',
                  style: JlTextStyles.p3Medium.merge(
                    TextStyle(color: themeColors.onSurfaceHigh),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // print('Terms of Service"');
                      //_openPrivacyPolicy();
                    },
                ),
                TextSpan(
                  text: " and ",
                  style: JlTextStyles.p3.merge(
                    TextStyle(color: themeColors.onSurfaceMedium),
                  ),
                ),
                TextSpan(
                  text: "Terms & Conditions",
                  style: JlTextStyles.p3Medium.merge(
                    TextStyle(color: themeColors.onSurface),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // print('Terms of Service"');
                      //_openTermAndCondition();
                    },
                )
              ],
            ),
          ),
        ),
        JlResGaps.v_32,
      ],
    );
  }

  Widget _widgetActions(BuildContext context) {
    // final mFormController = TextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: JlResDimens.dp_40),
      child: Column(
        children: [
          JlResGaps.v_24,
          HundiButtonWidget(
              mOnClicked: () {
                // _modalAuth(AuthUiConstants.CASE_LOGIN_PHONE);
              },
              mTxt: "Get Started",
              widthType: HundiButtonWidget.WIDTH_EXPANDED),
          JlResGaps.v_16,
          ElevatedButton(
            onPressed: () {
              // _modalAuth(AuthUiConstants.CASE_LOGIN_GOOGLE);
              // TODO _modalAuth(AuthConstants.CASE_LOGIN_GOOGLE, mFormController.text);
            },
            style: ElevatedButton.styleFrom(
                // elevation: 2,
                shadowColor: themeColors.onSurface.withOpacity(0.4),
                // visualDensity: VisualDensity.compact,
                minimumSize: const Size(double.maxFinite, double.minPositive),
                backgroundColor: themeColors.surface,
                foregroundColor: themeColors.onSurface,
                padding: const EdgeInsets.symmetric(
                    horizontal: JlResDimens.dp_24, vertical: JlResDimens.dp_16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SvgPicture.asset(
                'assets/svg/google_icon.svg',
                width: JlResDimens.dp_20,
              ),
              JlResGaps.h_4,
              Expanded(
                  flex: 1,
                  child: Text(
                    "Login with Google",
                    textAlign: TextAlign.center,
                    style: JlTextStyles.button,
                  )),
            ]),
          ),
        ],
      ),
    );
  }

/* *********************************************************************************
 *                                      theme
 */

  prepareTheme(BuildContext context) {
    // themeColors.PrimaryHigh = TbThemeHelper.colorBlend(context, TbThemeColor.surface,
    //     TbThemeColor.primary, TbColorEmphasize.high);
    // themeColors.Primary = Theme.of(context).colorScheme.primary;

    // themeColors = TbThemeHelper.prepareThemeColors(context);
    // appThemeDisplay = TbThemeHelper.prepareThemeMedia(context);
  }
}
