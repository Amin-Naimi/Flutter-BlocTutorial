import 'package:flutter/material.dart';

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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Counter Value is: ",
            style: TextStyle(fontSize: 18),),
            SizedBox(
              height: 10,
            ),
            Text(
              "0",
              style: TextStyle(color: Colors.blueAccent, fontSize: 30),
            )
          ],
        ),
      ),
      floatingActionButton: const ButtonsWidget(),
    );
  }
}
