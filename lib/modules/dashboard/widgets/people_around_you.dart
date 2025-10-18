import 'package:flutter/material.dart';

import '/widgets/widgets.dart';

class PeopleAroundYou extends StatelessWidget {
  final List<Map<String, String>> users;
  const PeopleAroundYou({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          3,
              (index) {
            final Map<String, String> user = users[index];
            return SuggestionProfile(
              username: user['name']!,
              distance: user['distance']!,
              image: user['image']!,
            );
          },
        ),
      ],
    );
  }
}
