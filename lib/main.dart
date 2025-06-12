import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/application/downloads/downloads_bloc.dart';
import 'package:test/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:test/application/search/search_bloc.dart';
import 'package:test/core/colors/colors.dart';
import 'package:test/domain/core/di/injectable.dart';
import 'package:test/presentaion/main_page/widgets/screen_main_page.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastLaughBloc>()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix App',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          primaryColor: Colors.white,
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: TextTheme(
            bodyMedium: TextStyle(color: Colors.white),
            bodyLarge: TextStyle(color: Colors.white),
          ),
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
