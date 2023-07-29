import 'package:flutter/material.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_colors.dart';

class OnboardIllustrationWidget extends StatelessWidget {
  // static const TYPE_ICON = 0;
  // static const TYPE_DEFAULT = 1;
  // late AppThemeColors themeColors;

  const OnboardIllustrationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeColors = Theme.of(context).extension<AppThemeColors>() ??
        AppThemeColors.seedColor(seedColor: Color(0xFF6CE18D), isDark: false);
    return Stack(
      children: [
        Container(
            decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/card/pic_card_shadow.png'),
            fit: BoxFit.fitHeight,
             colorFilter:
                ColorFilter.mode(themeColors.onSurface.withOpacity(0.4), BlendMode.srcIn),
          ),
        )),
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/img/card/pic_card_back.png'),
            colorFilter:
                ColorFilter.mode(themeColors.primaryHigh, BlendMode.srcIn),
            fit: BoxFit.fitHeight,
          ),
        )),
        Container(
            decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/card/pic_card_texture.png'),
            fit: BoxFit.fitHeight,
            opacity: 0.4
          ),
        )),
        Container(
            decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/card/pic_card_text.png'),
            fit: BoxFit.fitHeight,
          ),
        )),
        Container(
            decoration:  BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/img/card/pic_card_bank_back.png'),
            fit: BoxFit.fitHeight,
            colorFilter:
                ColorFilter.mode(themeColors.primaryLight, BlendMode.srcIn),
          ),
        )),
        Container(
            decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/card/pic_card_bank.png'),
            fit: BoxFit.fitHeight,
            opacity: 0.9
          ),
        )),
      ],
    );
  }
}
