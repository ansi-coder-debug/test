import 'package:flutter/material.dart';
import 'package:test/core/constant.dart';

class MainCard extends StatelessWidget {
  final String imageUrl;

  const MainCard({
    Key? key,
    required this.imageUrl,
    }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: KRadius20,
        image:  DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
