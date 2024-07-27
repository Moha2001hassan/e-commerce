import 'package:e_commerce/utils/helpers/my_helper_functions.dart';
import 'package:e_commerce/utils/helpers/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/routing/app_router.dart';
import 'utils/routing/routes.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  final AppRouter appRouter;

  const App({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    // Set the status bar text color to black
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Make status bar transparent
        statusBarIconBrightness: isDark
            ? Brightness.light
            : Brightness.dark, // Set text/icons to dark
      ),
    );

    ScreenUtil().init(context); // Initialize ScreenUtil
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialRoute: Routes.navigationMenu,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
