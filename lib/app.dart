import 'package:e_commerce/utils/helpers/screen_util.dart';
import 'package:flutter/material.dart';
import 'utils/routing/app_router.dart';
import 'utils/routing/routes.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  final AppRouter appRouter;
  const App({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    ScreenUtil().init(context); // Initialize ScreenUtil
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialRoute: Routes.navigationMenu,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}