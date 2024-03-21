import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AuthFormState();
  }
}

class AuthFormState extends State<AuthForm> {
  //-------------------------------------------
  final _formkey = GlobalKey<FormState>();
  var _email = '';
  var _password = '';
  var _userName = '';
  bool isLogInPage = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          Container(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                key: _formkey,
                children: [
                  /// username input feild
                  if (!isLogInPage)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        key: ValueKey('username'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Empty user name';
                          }
                          return null;
                        },
                        onSaved: (newValue) {
                          _userName = newValue!;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            hintText: "user Name",
                            hintStyle: TextStyle(fontSize: 16),
                            label: Text("User Name"),
                            labelStyle: GoogleFonts.roboto()),
                      ),
                    ),
                    SizedBox(height: 15,),

                  /// email input from feild
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: ValueKey('email'),
                      validator: (value) {
                        if (value!.isEmpty || !value!.contains("@")) {
                          return 'incorrect email';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _email = newValue!;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Email",
                          hintStyle: TextStyle(fontSize: 16),
                          label: Text("Email"),
                          labelStyle: GoogleFonts.roboto()),
                    ),
                  ),
                  SizedBox(height: 15,),

                  /// password input form feild
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      key: ValueKey('password'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Empty password';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _password = newValue!;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 16),
                          label: Text("Password"),
                          labelStyle: GoogleFonts.roboto()),
                    ),
                  ),
                  SizedBox(height: 25,),

                  /// log in  button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                        ),
                        child: isLogInPage ? Text("Log In ",style: TextStyle(
                          color: Colors.white,
                          fontSize: 22
                        ),) : Text("Sign Up ",style: TextStyle(
                            color: Colors.white,
                            fontSize: 22
                        ),) ,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
