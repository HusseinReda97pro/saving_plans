import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/app_assets.dart';
import 'keyboard_button.dart';

class CustomKeyboardWidget extends StatefulWidget {
  final TextEditingController pinInputController;
  final Function callBack;
  const CustomKeyboardWidget(
      {super.key, required this.pinInputController, required this.callBack});

  @override
  State<CustomKeyboardWidget> createState() => _CustomKeyboardWidgetState();
}

class _CustomKeyboardWidgetState extends State<CustomKeyboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 0.4.sh),
      margin: const EdgeInsets.only(top: 20.0),
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: (1 / .4),
        children: List.generate(12, (index) {
          if (index == 9) return _buildFaceIdButton();
          if (index == 10) {
            return KeyboardButton(
              title: "0",
              onTap: () {
                if (widget.pinInputController.text.length < 4) {
                  widget.pinInputController.text += "0";
                  widget.callBack();
                }
              },
            );
          }
          if (index == 11) return _buildDeleteButton();
          return KeyboardButton(
            title: (index + 1).toString(),
            onTap: () {
              if (widget.pinInputController.text.length < 4) {
                widget.pinInputController.text += "${index + 1}";
                widget.callBack();
              }
            },
          );
        }),
      ),
    );
  }

  Widget _buildFaceIdButton() {
    return InkWell(
      onTap: () {},
      child: Center(
        child: SizedBox(
          width: 25.0,
          height: 25.0,
          child: Image.asset(
            AppAssets.faceIDIcon,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }

  Widget _buildDeleteButton() {
    return InkWell(
      onTap: () {
        if (widget.pinInputController.text.isNotEmpty) {
          widget.pinInputController.text = widget.pinInputController.text
              .substring(0, widget.pinInputController.text.length - 1);
          widget.callBack();
        }
      },
      child: Center(
        child: SizedBox(
            width: 25.0,
            height: 25.0,
            child: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.error,
            )),
      ),
    );
  }
}
