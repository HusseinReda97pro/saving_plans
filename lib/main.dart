import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:geidea_task/resources/theme/light_theme.dart';
import 'package:geidea_task/utils/app_router.dart';
import 'package:geidea_task/utils/constants.dart';
import 'package:geidea_task/widgets/screen_util_init.dart';

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenInit(
      builder: (context, child) => GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: MaterialApp(
          navigatorKey: Constants.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Geidea Task',
          theme: lightTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: const Locale('en'),
          onGenerateRoute: AppRouter.generateRoutes,
        ),
      ),
    );
  }
}
