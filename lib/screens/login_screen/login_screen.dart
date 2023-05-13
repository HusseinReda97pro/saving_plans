import 'package:flutter/material.dart';
import 'package:geidea_task/extensions/app_size_boxes.dart';
import 'package:geidea_task/extensions/context.dart';
import 'package:geidea_task/resources/language/app_strings.dart';
import 'package:geidea_task/screens/login_screen/widgets/saving_plans_sheet.dart';
import 'package:geidea_task/widgets/primary_button_widget.dart';

import '../../widgets/secondary_button_widget.dart';
import '../../widgets/text_field_widget.dart';
import '../pin_screen/pin_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            20.heightBox,
            Text(
              AppStrings.welcome,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodySmall,
            ),
            5.heightBox,
            Text(
              AppStrings.login,
              textAlign: TextAlign.center,
            ),
            40.heightBox,
            Text(
              AppStrings.startSaving,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
            30.heightBox,
            TextFieldWidget(
              controller: emailController,
              hintText: AppStrings.emailOrPhoneNumber,
            ),
            TextFieldWidget(
              controller: passwordController,
              isPassword: true,
              hintText: AppStrings.password,
            ),
            25.heightBox,
            PrimaryButtonWidget(
              title: AppStrings.continueString,
              onPressed: () {},
            ),
            140.heightBox,
            SecondaryButtonWidget(
              title: AppStrings.forgotPassword,
              onPressed: () {
                context.pushName(PinScreen.routeName);
              },
            ),
            15.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.haveNoAAccount,
                  style: Theme.of(context).primaryTextTheme.bodySmall,
                ),
                5.widthBox,
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    AppStrings.signUp,
                    style: Theme.of(context).primaryTextTheme.displaySmall,
                  ),
                )
              ],
            ),
            //for test sheet only
            15.heightBox,
            GestureDetector(
              onTap: _openPlansSheet,
              child: Text(
                "Choose Saving Plan",
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.displaySmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _openPlansSheet() {
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const SavingPlansSheet();
      },
    );
  }
}
