import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider_masterclass/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  void initState() {
    super.initState();
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      counterProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Consumer<CounterProvider>(builder: (context, value, child) {
          return Text(
            value.count.toString(),
            style: TextStyle(fontSize: 70),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
