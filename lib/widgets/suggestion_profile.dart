import 'package:flutter/material.dart';

import '/widgets/widgets.dart';

class SuggestionProfile extends StatelessWidget {
  final String image, username, distance;
  const SuggestionProfile({super.key, required this.image, required this.username, required this.distance});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(image: image),
        const CustomSpacer(height: 10),
        PoppinsText(
          text: username,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        PoppinsText(
          text: distance,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
