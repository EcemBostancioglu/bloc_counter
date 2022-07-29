import 'package:bloc_counter_example/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if(state is IncrementCounterState){
          return Center(
              child: Text('${state.value}'),
            );
          }
          return const Center(
            child: Text('0'),
          );
        },
      ),
    );
  }
}
