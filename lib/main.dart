import 'package:flutter/material.dart';
import 'package:flutter_provider_masterclass/login/login_screen.dart';
import 'package:flutter_provider_masterclass/provider/counter_provider.dart';
import 'package:flutter_provider_masterclass/provider/favorite_provider.dart';
import 'package:flutter_provider_masterclass/provider/login_provider.dart';
import 'package:flutter_provider_masterclass/provider/notify_listener_provider.dart';
import 'package:flutter_provider_masterclass/provider/slider_provider.dart';
import 'package:flutter_provider_masterclass/provider/theme_changer_provider.dart';
import 'package:flutter_provider_masterclass/screen/notify_listener_screen.dart';
import 'package:flutter_provider_masterclass/theme/theme_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    //   return ChangeNotifierProvider(
    //     create: (_) => CounterProvider(),
    //     child: MaterialApp(
    //       title: "Provider Masterclass",
    //       home: CounterScreen(),
    //     ),
    //   );
    // }
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider())
        // ChangeNotifierProvider(create: (_) => NotifyListenerProvider()) //don't need to use this when use ValueNotifier
      ],
      child: Builder(builder: (context) {
        // final provider = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          title: "Provider Masterclass",
          // themeMode: provider.themeMode,
          // theme: ThemeData(
          //     appBarTheme: AppBarTheme(backgroundColor: Colors.teal),
          //     iconTheme: IconThemeData(color: Colors.red),
          //     brightness: Brightness.light,
          //     primarySwatch: Colors.blue),
          // darkTheme: ThemeData(
          //     appBarTheme: AppBarTheme(backgroundColor: Colors.red),
          //     iconTheme: IconThemeData(color: Colors.blue),
          //     brightness: Brightness.dark,
          //     primarySwatch: Colors.green,
          //     primaryColor: Colors.green),
          home: LoginScreen(),
        );
      }),
    );
  }
}
