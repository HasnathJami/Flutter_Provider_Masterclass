import 'package:flutter/material.dart';
import 'package:flutter_provider_masterclass/provider/counter_provider.dart';
import 'package:flutter_provider_masterclass/screen/counter_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        title: "Provider Masterclass",
        home: CounterScreen(),
      ),
    );
  }
}
