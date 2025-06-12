import 'package:flutter/material.dart';
import 'package:test/core/constant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Kwidth,
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const Icon(Icons.cast, color: Colors.white),
        Kwidth,
        Container(color: Colors.blue, height: 25, width: 25),
        Kwidth,
      ],
    );
  }
}
