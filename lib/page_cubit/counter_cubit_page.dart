import 'dart:developer' as developer;

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:counter_bloc/page_cubit/cubit/counter_cubit.dart';

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    developer.log('build', name: 'Widget build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
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
                  onPressed: () => context.read<CounterCubit>().increment(),
                ),
                TextButton.icon(
                  icon: const Icon(Icons.remove),
                  label: const Text(''),
                  onPressed: () => context.read<CounterCubit>().decrement(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
