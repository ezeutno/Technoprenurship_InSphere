import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'bottom_bar_view/bottom_bar_view.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    final emailField = TextFormField(
      obscureText: false,
      onFieldSubmitted: (term){
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextFormField(
      obscureText: true,
      onFieldSubmitted:  (term){
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
          border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => BottomNavBar()),
        );
      },
      child: Text("Login",
        textAlign: TextAlign.center,
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 300.0,
                      child: Image.asset(
                        "assets/logo/InSphere.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 45.0
                      ),
                    emailField,
                    SizedBox(
                      height: 25.0
                      ),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                      ),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}