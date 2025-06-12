import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test/application/downloads/downloads_bloc.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/widgets/app_bar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [const _SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(title: "Downloads"),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (context, index) => SizedBox(height: 25),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(
        context,
      ).add(DownloadsEvent.getDownloadsImage());
    });

    // BlocProvider.of<DownloadsBloc>(
    //   context,
    // ).add(DownloadsEvent.getDownloadsImage());

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Kwhitecolor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        KHeight,
        const Text(
          'We will download a personalised selection of\nmovies and shows for you,so there`s\nis something to watch on your \ndevice ',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        KHeight,
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return
            // print('state.......');
            // print(state);
            SizedBox(
              width: size.width,
              height: size.width,

              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: size.width * 0.4,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                        DownloadsImageWidget(
                          imageList:
                              '$imageAppendUrl${state.downloads![0].posterPath}',
                          margin: EdgeInsets.only(left: 170, top: 50),
                          angle: 25,
                          size: Size(size.width * 0.35, size.width * 0.55),
                        ),
                        DownloadsImageWidget(
                          imageList:
                              '$imageAppendUrl${state.downloads![1].posterPath}',
                          margin: EdgeInsets.only(right: 170, top: 50),
                          angle: -20,
                          size: Size(size.width * 0.35, size.width * 0.55),
                        ),
                        DownloadsImageWidget(
                          imageList:
                              '$imageAppendUrl${state.downloads![7].posterPath}',
                          radius: 8,
                          margin: EdgeInsets.only(bottom: 10, top: 50),
                          size: Size(size.width * 0.4, size.width * 0.6),
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                  color: Kbuttoncolorwhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            color: Kbuttoncolorblue,
          ),
        ),
        KHeight,
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                color: Kblackcolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          color: Kbuttoncolorwhite,
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Kwidth,
        Icon(Icons.settings, color: Kwhitecolor),
        Kwidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.size,
    this.radius = 10,
    required this.margin,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            // margin: margin,
            width: size.width,
            height: size.height,
            // color: Kblackcolor,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageList),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
