import 'package:flutter/material.dart';
import 'package:geidea_task/extensions/app_size_boxes.dart';
import 'package:geidea_task/resources/app_assets.dart';
import 'package:geidea_task/resources/language/app_strings.dart';

class SavingPlanCard extends StatelessWidget {
  final String title;
  final String body;
  final bool isCompleted;
  const SavingPlanCard(
      {super.key,
      required this.title,
      required this.body,
      this.isCompleted = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AppAssets.peopleIcon,
                  color: Theme.of(context).colorScheme.primary,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).primaryTextTheme.displayMedium,
                    ),
                    5.widthBox,
                    isCompleted
                        ? _buildCompletedTag(context)
                        : const SizedBox.shrink()
                  ],
                ),
                5.heightBox,
                Text(
                  body,
                  style: Theme.of(context).primaryTextTheme.bodySmall,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCompletedTag(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          AppStrings.completed,
          style: Theme.of(context).primaryTextTheme.headlineSmall,
        ),
      ),
    );
  }
}
