import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "There is no Weather 😔",
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          Text(
            "Start Searching Now 🔍",
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
