import 'package:flutter/material.dart';
import 'package:geidea_task/resources/app_assets.dart';
import 'package:geidea_task/resources/language/app_strings.dart';

class UserCard extends StatefulWidget {
  const UserCard({super.key});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      color: Theme.of(context).colorScheme.secondary,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset(
                AppAssets.userProfilePlaceHolder,
                fit: BoxFit.cover,
                height: 35,
                width: 35,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Lionel Okoeguale"),
              Text(
                AppStrings.user,
                style: Theme.of(context).primaryTextTheme.bodySmall,
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppStrings.logout,
                style: Theme.of(context).primaryTextTheme.displaySmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
