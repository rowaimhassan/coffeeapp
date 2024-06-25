import 'package:coffee_app/screens/homescreen.dart';
import 'package:flutter/material.dart';
void main (){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      home: HomeScreen(),
    );
  }
}
