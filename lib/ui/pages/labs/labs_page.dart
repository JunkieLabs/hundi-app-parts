import 'package:auto_route/auto_route.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hundi_flutter_parts/ui/res/styles/text_styles.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_colors.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_display.dart';
import 'package:hundi_flutter_parts/ui/res/theme/theme_helper.dart';
import 'package:hundi_flutter_parts/ui/res/values/dimens.dart';
import 'package:hundi_flutter_parts/ui/res/values/gaps.dart';
import 'package:hundi_flutter_parts/ui/shared/color_picker/color_picker.dart';
import 'package:hundi_flutter_parts/ui/widgets/hundiButton_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

@RoutePage()
class LabsPage extends StatefulWidget {
  const LabsPage({super.key});


  @override
  State<LabsPage> createState() => _LabsPageState();
}

class _LabsPageState extends State<LabsPage> {
  int _counter = 0;

  late AppThemeColors themeColors;
  late AppThemeDisplay appThemeDisplay;

  @override
  void initState() {
    super.initState();

    // final state = Provider.of<AppThemeProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
          Positioned(
              right: -42,
              top: 0,
              child: Transform.rotate(
                angle: -math.pi / 6,
                child: Container(
                  height: 146,
                  width: 146,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(JlResDimens.dp_12),
                      border: Border.all(color: themeColors.primary)),
                ),
              )),
          Positioned(
            right: -42,
            top: 0,
            child: Transform.rotate(
                angle: -math.pi / 4,
                child: Container(
                  height: 146,
                  width: 146,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(JlResDimens.dp_12),
                      border: Border.all(color: themeColors.onSurface)),
                )),
          ),
          _widgetContents(context),
          ColorPickerWidget(
            onDragCompleted: () {},
            onDragStarted: () {},
            offset: Offset(screenWidth - 56, 228),
            seedColor: themeColors.seedColor,
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  /* ********************************************************************
   *                            widgets
   */

  _widgetContents(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: JlResDimens.dp_24),
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          JlResGaps.v_96,
          Text(
            'Part of',
            style: JlTextStyles.h1.copyWith(
                fontSize: (appThemeDisplay.isSamllHeight
                    ? JlResDimens.sp_32
                    : JlResDimens.sp_42),
                color: themeColors.onSurface),
          ),
          Text(
            'Hundi:',
            style: JlTextStyles.h1.copyWith(
                fontSize: (appThemeDisplay.isSamllHeight
                    ? JlResDimens.sp_32
                    : JlResDimens.sp_42),
                color: themeColors.onSurface),
          ),
          Text(
            'Record Book',
            style: JlTextStyles.h1.copyWith(
                fontSize: (appThemeDisplay.isSamllHeight
                    ? JlResDimens.sp_32
                    : JlResDimens.sp_42),
                color: themeColors.onSurface),
          ),
          JlResGaps.v_12,
          Text(
            'More parts will be public soon',
            style: JlTextStyles.h6.copyWith(color: themeColors.onSurfaceMedium),
          ),
          Flexible(flex: 3, child: Container()),
          HundiButtonWidget(
              mOnClicked: () {
                context.push("/onboard");
                // _modalAuth(AuthUiConstants.CASE_LOGIN_PHONE);
              },
              mTxt: "Check Theme",
              widthType: HundiButtonWidget.WIDTH_EXPANDED),
          Flexible(flex: 1, child: Container()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(JlResDimens.dp_24),
                color: Color.alphaBlend(themeColors.onSurface.withOpacity(0.06), themeColors.surface) ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  child: Text(
                    "Download the main app",
                    style:
                        JlTextStyles.h6.copyWith(color: themeColors.onSurface),
                  ),
                ),
                JlResGaps.v_24,
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                        borderRadius: BorderRadius.circular(JlResDimens.dp_24),
                        onTap: () => {_openPlayStore()},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(JlResDimens.dp_16),
                              color: themeColors.onSurface),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/svg/google_play_icon.svg',
                                height: JlResDimens.dp_40,
                              ),
                              JlResGaps.h_24,
                              SvgPicture.asset(
                                'assets/svg/google_play_text.svg',
                                height: JlResDimens.dp_40,
                                colorFilter: ColorFilter.mode(
                                    themeColors.surface, BlendMode.srcIn),
                              ),
                            ],
                          ),
                        )))
              ],
            ),
          ),
          JlResGaps.v_12,
        ],
      ),
    );
  }

  /* ***********************************************************************
   *  
   */

  void _openPlayStore() async {
    const String playStoreLink =
        "https://play.google.com/store/apps/details?id=com.hundi.social"; // Replace with your app's Play Store link

    if (await canLaunchUrlString(playStoreLink)) {
      await launchUrlString(playStoreLink);
    } else {
      // Handle error: unable to open the link
      print('Error: Could not open Play Store');
    }
  }
}
