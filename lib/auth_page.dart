import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:juyostats/login_page.dart';
import 'package:juyostats/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginpage=true;

  void toggleScreens(){
setState(() {
  showLoginpage = !showLoginpage;
});
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginpage){
return LoginPage(showRegisterPage:toggleScreens);
    }else{
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}
