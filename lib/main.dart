import 'package:bookly2/Core/Utills/Apiservice.dart';
import 'package:bookly2/Featurs/home_screen/data/repository/home_screen_repository.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/All_BooksCubit/All_bookcubit.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/logic/Best_SellerCubit/best_sellercubit_bloc.dart';
import 'package:bookly2/Featurs/home_screen/presentation/home_screen_screen/ui/Second_screen.dart';
import 'package:bookly2/Featurs/splash/presentation/splash_screen/ui/Splash_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Featurs/home_screen/presentation/home_screen_screen/ui/home_screen.dart';

main() {
  runApp(const books());
}

class books extends StatelessWidget {
  const books({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  AllBookCubit(HomeScreenRepo(ApiService(dio: Dio())))
                    ..getAllBooks()),
          BlocProvider(
              create: (context) =>
                  BestSellercubit(HomeScreenRepo(ApiService(dio: Dio())))
                    ..getBestSellers()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "s1": (context) => const home_screen(),
            "s2": (context) => second_screen(),
          },
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color(0xFF100b20),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff120531),
            ),
          ),
          home: const splash_screen(),
        ));
  }
}
