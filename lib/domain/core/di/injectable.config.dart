// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:test/application/downloads/downloads_bloc.dart' as _i631;
import 'package:test/application/fast_laugh/fast_laugh_bloc.dart' as _i704;
import 'package:test/application/hot_and_new/hot_and_new_bloc.dart' as _i840;
import 'package:test/application/search/search_bloc.dart' as _i181;
import 'package:test/domain/downloads/i_downloads_repo.dart' as _i114;
import 'package:test/domain/hot_and_new_response/hot_and_new_service.dart'
    as _i810;
import 'package:test/domain/search/search_service.dart' as _i999;
import 'package:test/infrastructure/downloads/downloads_repository.dart'
    as _i862;
import 'package:test/infrastructure/hot_and_new/hot_and_new_impl.dart' as _i177;
import 'package:test/infrastructure/search/search_impl.dart' as _i89;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i810.HotAndNewService>(
      () => _i177.HotAndNewImplementation(),
    );
    gh.lazySingleton<_i999.SearchService>(() => _i89.SearchImpl());
    gh.lazySingleton<_i114.IDownloadsRepo>(() => _i862.DownloadsRepository());
    gh.factory<_i631.DownloadsBloc>(
      () => _i631.DownloadsBloc(gh<_i114.IDownloadsRepo>()),
    );
    gh.factory<_i181.SearchBloc>(
      () => _i181.SearchBloc(
        gh<_i114.IDownloadsRepo>(),
        gh<_i999.SearchService>(),
      ),
    );
    gh.factory<_i704.FastLaughBloc>(
      () => _i704.FastLaughBloc(gh<_i114.IDownloadsRepo>()),
    );
    gh.factory<_i840.HotAndNewBloc>(
      () => _i840.HotAndNewBloc(gh<_i810.HotAndNewService>()),
    );
    return this;
  }
}
