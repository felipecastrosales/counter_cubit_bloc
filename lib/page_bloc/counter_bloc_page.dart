import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    developer.log('build', name: 'Widget build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                developer.log('build', name: 'BlocBuilder');
                return Text('Counter ${state.counter}');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text(''),
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                    CounterIncrement();
                  },
                ),
                TextButton.icon(
                  icon: const Icon(Icons.remove),
                  label: const Text(''),
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterDecrement());
                    CounterDecrement();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
