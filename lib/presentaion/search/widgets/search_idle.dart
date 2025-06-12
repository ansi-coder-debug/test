import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:injectable/injectable.dart';
import 'package:test/application/search/search_bloc.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/core/constant.dart';
import 'package:test/presentaion/search/widgets/title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// const imageUrl =
//     'https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        KHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                print('Loading State');
                return const Center(child: CircularProgressIndicator());
              } else if (state.isError) {
                print('error  State');
                return const Center(
                  child: Text('Error while getting the data'),
                );
              } else if (state.idleList.isEmpty) {
                print('List is empty');
                return const Center(child: Text('List is empty'));
              }

              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final movie = state.idleList[index];
                  return TopSearchItemTile(
                    title: movie.title ?? 'no title provided',
                    imageUrl: '$imageAppendUrl${movie.posterPath}',
                  );
                },
                separatorBuilder: (context, index) => KHeight20,
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;

  const TopSearchItemTile({
    Key? Key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: Kwhitecolor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: Kwhitecolor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Kblackcolor,
            radius: 23,
            child: Center(
              child: Icon(CupertinoIcons.play_fill, color: Kwhitecolor),
            ),
          ),
        ),
      ],
    );
  }
}
