import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:go_router/go_router.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_colors.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_provider.dart';
import 'package:hundi_flutter_parts/ui/res/values/dimens.dart';
import 'package:hundi_flutter_parts/ui/res/values/gaps.dart';
import 'package:hundi_flutter_parts/ui/routes/app_router.dart';
import 'package:hundi_flutter_parts/ui/shared/color_picker/color_picker.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LabsPage extends StatefulWidget {
  const LabsPage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<LabsPage> createState() => _LabsPageState();
}

class _LabsPageState extends State<LabsPage> {
  int _counter = 0;

  late AppThemeColors themeColors;

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
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the LabsPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Labs"),
      ),
      body: Stack(
        children: [
          _widgetContents(context),
          ColorPickerWidget(
            onDragCompleted: () {},
            onDragStarted: () {},
            offset: Offset(screenWidth - 56, 156),
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
      padding: EdgeInsets.symmetric(horizontal: JlResDimens.dp_24),
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          JlResGaps.v_16,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text('Onboard'),
              onPressed: () {
                context.go("/onboard");
                // Modular.to.pushNamed(UiConstants.Routes.splash);
              },
            ),
          ),
        ],
      ),
    );
  }
}
