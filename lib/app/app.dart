import 'package:esepte/cubit/esepte1_cubit.dart';
import 'package:esepte/cubit/raund_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/esepte_cubit.dart';
import '../cubit/raund1_cubit.dart';
import '../pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => EsepteCubit(),
          ),
          BlocProvider(
            create: (context) => Esepte1Cubit(),
          ),
          BlocProvider(
            create: (context) => RaundCubit(),
          ),
          BlocProvider(
            create: (context) => Raund1Cubit(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
