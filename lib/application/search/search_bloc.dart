// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test/application/downloads/downloads_bloc.dart';
import 'package:test/domain/core/failures/main_failure.dart';
import 'package:test/domain/downloads/i_downloads_repo.dart';
import 'package:test/domain/downloads/models/downloads.dart';
import 'package:test/domain/search/models/search_response/search_response.dart';
import 'package:test/domain/search/search_service.dart';
import 'package:test/presentaion/search/widgets/search_idle.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(this._downloadsService, this._searchService)
    : super(SearchState.initial()) {
    /*
idle state
*/
    on<_Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(
          SearchState(
            searchResultList: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }

      emit(
        const SearchState(
          searchResultList: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      // get trending
      final _result = await _downloadsService.getDownloadsImages();

      final _state = _result.fold(
        (MainFailure f) {
          return SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<Downloads> list) {
          return SearchState(
            searchResultList: [],
            idleList: list,
            isLoading: false,
            isError: false,
          );
        },
      );
      // show to ui
      emit(_state);
    });
    /*
search result state
*/
    on<_SearchMovie>((event, emit) async {
      // call search movie api
      log('Searching For ${event.movieQuery}');
      emit(
        SearchState(
          searchResultList: searchesResult,
          /*here i got difficult*/
          idleList: state.idleList,
          isLoading: true,
          isError: false,
        ),
      );

      final _result = await _searchService.searchMovies(
        movieQuery: event.movieQuery,
      );
      final _state = _result.fold(
        (MainFailure f) {
          return const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchResponse r) {
          return SearchState(
            searchResultList: r.results ?? [],
            idleList: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      // show to ui
      emit(_state);
    });
  }
}
