import 'package:flutter/material.dart';
import 'package:geidea_task/screens/login_screen/login_screen.dart';

import '../screens/pin_screen/pin_screen.dart';

class AppRouter {
  static Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _buildRoute(screen: const LoginScreen());

      case LoginScreen.routeName:
        return _buildRoute(screen: const LoginScreen());

      case PinScreen.routeName:
        return _buildRoute(screen: const PinScreen());
    }

    return null;
  }

  static MaterialPageRoute _buildRoute({required Widget screen}) {
    return MaterialPageRoute(builder: (_) => screen);
  }
}
