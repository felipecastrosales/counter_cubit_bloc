import 'package:flutter/material.dart';

import 'home_page.dart';
import 'page_bloc/counter_bloc_page.dart';
import 'page_cubit/counter_cubit_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/bloc': (context) => const CounterBlocPage(),
        '/cubit': (context) => const CounterCubitPage(),
      },
      home: const HomePage(),
    );
  }
}
