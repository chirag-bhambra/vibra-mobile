import 'package:flutter/material.dart';

import '/core/core.dart';
import '/widgets/widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomSearchBar(),
            const CustomSpacer(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: MockData.users.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.75, // Adjust based on card height/width
                  ),
                  itemBuilder: (context, index) {
                    final Map<String, String> user = MockData.users[index];
                    return ProfileCard(
                      image: user['image']!,
                      username: user['name']!,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
