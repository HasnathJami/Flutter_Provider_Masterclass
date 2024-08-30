import 'package:flutter/material.dart';
import 'package:flutter_provider_masterclass/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    // final provider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Slider(
              value: value.opacityValue,
              onChanged: (changedValue) {
                value.setOpacityValue(changedValue);
              },
            );
          }),
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.opacityValue)),
                    child: Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.opacityValue)),
                    child: Center(
                      child: Text('Container 2'),
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
