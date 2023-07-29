import 'package:flutter/material.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_colors.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_provider.dart';
import 'package:hundi_flutter_parts/ui/routes/go_router.dart';
// import 'package:hundi_flutter_parts/ui/routes/app_router.dart';
import 'package:provider/provider.dart';

// import 'ui/res/theme/app_theme_provider.dart';

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("MyApp");
    return ChangeNotifierProvider<AppThemeProvider>(
        create: (_) => AppThemeProvider(defaultColor: Color(0xFF6CE18D)),
        child:  ThemedApp());
  }
}

class ThemedApp extends StatelessWidget {
  // const
  
  // ThemedApp({super.key});
  // final _appRouter = AppRouter();

  ThemedApp({super.key});            
  

  @override
  Widget build(BuildContext context) {
    print("ThemedApp 1: ");
    final appThemeProvider = Provider.of<AppThemeProvider>(context);
    // print("ThemedApp: ${appThemeProvider.seedColor} ");

    return MaterialApp.router(
      title: 'Flutter Demo',
      
      theme: AppTheme.themeData(seedColor: appThemeProvider.seedColor).copyWith(
          extensions: <ThemeExtension<dynamic>>[
            AppThemeColors.seedColor(
                seedColor: appThemeProvider.seedColor, isDark: false)
          ]),
      darkTheme: AppTheme.themeData(
              seedColor: appThemeProvider.seedColor, isDark: true)
          .copyWith(extensions: <ThemeExtension<dynamic>>[
        AppThemeColors.seedColor(
            seedColor: appThemeProvider.seedColor, isDark: true)
      ]),
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routerDelegate: AppRouter.router.routerDelegate,
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),
      // routeInformationProvider: _appRouter.routeInfoProvider(),

      // routerConfig: _appRouter.config(),
      // home: const LabsPage(title: 'Flutter Demo Home Page'),
    );
  }
}

