import 'package:flutter/material.dart';
import 'package:test/core/constant.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: KRadius20,
        image: const DecorationImage(
          image: NetworkImage(
            'https://image.tmdb.org/t/p/w500/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg',
          ),
        ),
      ),
    );
  }
}
