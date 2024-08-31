import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Notify Listener'),
      ),
      body: Column(
        children: [
          ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, toggleValue, child) {
                return TextFormField(
                  obscureText: toggleValue,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffix: InkWell(
                          onTap: () {
                            toggle.value = !toggleValue;
                          },
                          child: Icon(toggleValue
                              ? Icons.visibility_off
                              : Icons.visibility))),
                );
              }),
          Center(
            child: ValueListenableBuilder(
                valueListenable: _counter,
                builder: (context, value, child) {
                  return Text(
                    'Value: $value',
                    style: TextStyle(fontSize: 30),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
          print(_counter.value.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
