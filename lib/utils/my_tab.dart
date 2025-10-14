import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String label;

  const MyTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath, height: 24), // reduced from 30
          const SizedBox(height: 2), // reduced from 4
          Text(
            label,
            style: const TextStyle(fontSize: 11),
          ), // slightly smaller font
        ],
      ),
    );
  }
}
