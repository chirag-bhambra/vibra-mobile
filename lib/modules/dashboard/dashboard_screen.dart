import 'package:flutter/material.dart';

import '/core/core.dart';
import './widgets/send_vibe_button.dart';
import '/constants/constants.dart';
import '/widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const CustomSpacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.secondaryBackground,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.cloud,
                        color: AppColors.primaryComponent,
                        size: 30,
                      ),
                      CustomSpacer(width: 5),
                      PoppinsText(
                        text: "Calm",
                        style: TextStyle(color: AppColors.primaryLightText),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const CustomSpacer(),
            const PoppinsText(
              text: "Hey Chirag👋",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const PoppinsText(
              text: Strings.yourVibeToday,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const CustomSpacer(height: 60),
            SendVibeButton(onTap: (){}),
            const CustomSpacer(height: 60),
            const PoppinsText(
              text: Strings.peopleAroundYou,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const CustomSpacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  3,
                  (index) {
                    final Map<String, String> user = MockData.users[index];
                    return SuggestionProfile(
                      username: user['name']!,
                      distance: user['distance']!,
                      image: user['image']!,
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
