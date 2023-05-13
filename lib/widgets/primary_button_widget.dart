import 'package:flutter/material.dart';
import 'package:geidea_task/widgets/button_widget.dart';

import '../utils/constants.dart';

class PrimaryButtonWidget extends ButtonWidget {
  PrimaryButtonWidget(
      {super.key, required super.title, super.onPressed, super.margin})
      : super(
          backgroundColor: Theme.of(Constants.navigatorKey.currentContext!)
              .colorScheme
              .primary,
          textColor: Theme.of(Constants.navigatorKey.currentContext!)
              .colorScheme
              .onSecondaryContainer,
        );
}
