import 'package:flutter/material.dart';
import 'package:todo_firebase/auth/auth_screen.dart';
import 'package:todo_firebase/screens/home_page.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        /*brightness: Brightness.dark,*/
        primaryColor: Colors.blue,
        useMaterial3: true
      ),
      home: AuthScreen(),
    );
  }
}