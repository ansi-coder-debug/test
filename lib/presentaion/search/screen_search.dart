import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/application/search/search_bloc.dart';
import 'package:test/core/constant.dart';
import 'package:test/domain/core/debounce/debounce.dart';

import 'package:test/presentaion/search/widgets/search_idle.dart';
import 'package:test/presentaion/search/widgets/search_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({Key? Key}) : super(key: Key);

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initialize());
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  if (value.isEmpty) {
                    return;
                  }
                  _debouncer.run(() {
                    BlocProvider.of<SearchBloc>(
                      context,
                    ).add(SearchEvent.searchMovie(movieQuery: value));
                  });
                },
              ),
              KHeight,

              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    // print('state.searchResultList');
                    // print(state.searchResultList);
                    if (state.searchResultList.isEmpty) {
                      return const SearchIdleWidget();
                    } else {
                      return const SearchResultWidget();
                    }
                  },
                ),
              ),
              // Expanded(child: const SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
