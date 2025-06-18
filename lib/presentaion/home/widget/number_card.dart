import 'package:flutter/material.dart';
import 'package:test/core/constant.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, 
  required this.index,
   required this.imageUrl
  });
  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row( 
          children: [
            SizedBox(width: 50, height: 150),
            Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: KRadius20,
                image:  DecorationImage(
                  image: NetworkImage(
                     imageUrl, //the north man
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Text(
            '${index + 1}',
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 0.9,
              shadows: [
                Shadow(
                  blurRadius: 8,
                  color: Colors.black,
                  offset: Offset(3, 3),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
