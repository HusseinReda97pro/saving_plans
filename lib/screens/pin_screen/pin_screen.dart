import 'package:flutter/material.dart';
import 'package:geidea_task/extensions/app_size_boxes.dart';
import 'package:geidea_task/extensions/context.dart';
import 'package:geidea_task/resources/language/app_strings.dart';
import 'package:geidea_task/screens/pin_screen/widgets/custom_keyboard_widget.dart';
import 'package:geidea_task/screens/pin_screen/widgets/pin_input_widget.dart';
import 'package:geidea_task/screens/pin_screen/widgets/user_card.dart';

class PinScreen extends StatefulWidget {
  static const routeName = '/pin_screen';
  const PinScreen({super.key});
  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  TextEditingController pinInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            40.heightBox,
            _buildAppBar(),
            20.heightBox,
            const UserCard(),
            PinInputWidget(pinInputController: pinInputController),
            CustomKeyboardWidget(
              pinInputController: pinInputController,
              callBack: () {
                setState(() {});
              },
            ),
            _buildForgetPINdButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(
              Icons.close,
              color: Theme.of(context).hintColor,
            ),
          ),
          Column(
            children: [
              Text(
                AppStrings.welcome,
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.bodySmall,
              ),
              5.heightBox,
              Text(
                AppStrings.enterYourPIN,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.info_outline,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForgetPINdButton() {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Text(
          AppStrings.forgotPIN,
          style: Theme.of(context).primaryTextTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
