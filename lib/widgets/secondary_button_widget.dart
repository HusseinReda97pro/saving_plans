import 'package:flutter/material.dart';
import 'package:geidea_task/widgets/button_widget.dart';

import '../utils/constants.dart';

class SecondaryButtonWidget extends ButtonWidget {
  SecondaryButtonWidget(
      {super.key, required super.title, super.onPressed, super.margin})
      : super(
          backgroundColor: Theme.of(Constants.navigatorKey.currentContext!)
              .colorScheme
              .secondary,
          textColor: Theme.of(Constants.navigatorKey.currentContext!)
              .colorScheme
              .primary,
        );
}
