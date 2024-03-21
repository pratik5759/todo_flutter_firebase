import 'package:flutter/material.dart';
import 'package:todo_firebase/auth/auth_form.dart';

class AuthScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AuthScreenState();
  }
}

class AuthScreenState extends State<AuthScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
      ),
      body: AuthForm(),
    );
  }
}