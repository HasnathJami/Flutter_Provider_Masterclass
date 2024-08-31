import 'package:flutter/material.dart';
import 'package:flutter_provider_masterclass/provider/theme_changer_provider.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Changer'),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme),
          RadioListTile(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme),
          RadioListTile(
              title: Text('System Mode'),
              value: ThemeMode.system,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme),
          Icon(Icons.favorite)
        ],
      ),
    );
  }
}
