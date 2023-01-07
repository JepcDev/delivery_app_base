import 'package:delivery_app_base/screens/carousel_igm.dart';
import 'package:flutter/material.dart';

void main() => runApp( const MyApp());
// mateapp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App Inputs',
      initialRoute: 'login',
      routes: {
        'login': ( context ) => const CarruselScreen(),
        // 'login': ( _ ) => CarruselScreen(),
        // 'home': ( _ ) => HomeSreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300]
      ),
    );
  }
}