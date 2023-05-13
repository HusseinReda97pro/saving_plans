import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geidea_task/extensions/app_size_boxes.dart';
import 'package:geidea_task/extensions/context.dart';
import 'package:geidea_task/screens/login_screen/widgets/saving_plan_card.dart';

import '../../../resources/language/app_strings.dart';
import '../../../widgets/primary_button_widget.dart';

class SavingPlansSheet extends StatelessWidget {
  const SavingPlansSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.8.sh,
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Icon(
                    Icons.close,
                    color: Theme.of(context).hintColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.chooseA,
                style: Theme.of(context).primaryTextTheme.bodyMedium,
              ),
              5.widthBox,
              Text(
                AppStrings.savingsPlan,
                style: Theme.of(context).primaryTextTheme.headlineMedium,
              ),
            ],
          ),
          Text(
            AppStrings.toStart,
            style: Theme.of(context).primaryTextTheme.bodyMedium,
          ),
          SavingPlanCard(
            title: AppStrings.bvn,
            body: AppStrings.bvnBody,
            isCompleted: true,
          ),
          SavingPlanCard(
            title: AppStrings.meansTitle,
            body: AppStrings.meansBody,
          ),
          SavingPlanCard(
            title: AppStrings.takeSelfie,
            body: AppStrings.takeSelfieBody,
          ),
          25.heightBox,
          PrimaryButtonWidget(
            title: AppStrings.continueString,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
