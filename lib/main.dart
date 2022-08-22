import 'package:flutter/material.dart';
import 'package:travel_app/screens/category_trips_screen.dart';
import 'package:travel_app/screens/catogories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './screens/category_trips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
      ],
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.amber,
        fontFamily: 'Tajawal',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontFamily: "Tajawal",
                fontWeight: FontWeight.bold,
              ),
              headline6: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: "Tajawal",
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    //  home: catogoriesscreen(),
      routes: {
        '/': (ctx) => catogoriesscreen(),
        '/category-trips': (ctx) => categorytripsscreen(),
      },
    );
  }
}
