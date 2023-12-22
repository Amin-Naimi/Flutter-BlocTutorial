import 'package:counter_app/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'buttons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bloc Tuto"),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Counter Value is: ",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            
/***************************************************************************************/            
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitial) {
                  return const Text(
                    "No value",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 30),
                  );
                }
                else if(state is CounterValueChangedState){
                     return  Text(
                    state.counter.toString(),
                    style: const TextStyle(color: Colors.blueAccent, fontSize: 30),
                  );
                }else{
                  return const SizedBox();
                }
              }
            ),
          
/***************************************************************************************/            
          
          ],
        ),
      ),
      floatingActionButton: const ButtonsWidget(),
    );
  }
}
