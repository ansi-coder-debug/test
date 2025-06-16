import 'package:flutter/material.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/core/constant.dart';

class VideoWidget extends StatelessWidget {
  final String? url;
  const VideoWidget({
   required this.url,
    Key? key, 
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(url!,
           fit: BoxFit.cover),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(color: Kwhitecolor, size: 30, Icons.volume_off),
            ),
          ),
        ),
      ],
    );
  }
}
