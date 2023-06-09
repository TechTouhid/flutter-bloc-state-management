import 'package:counter_app_bloc/bloc/my_bloc_observer.dart';
import 'package:counter_app_bloc/screen/home_screen.dart';
import 'package:flutter/material.dart';
import './bloc/bloc_imports.dart';

void main() {
  // deprecated and should not use
  // BlocOverrides.runZoned(
  //   () => runApp(const MyApp()),
  //   blocObserver: MyBlocObserver(),
  // );

  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
