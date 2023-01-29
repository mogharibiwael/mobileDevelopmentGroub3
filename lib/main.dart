import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/feature/user/login/view/login.dart';
import 'package:mobile_development_groub3/feature/user/signup/view/signup.dart';
import '';

void main(){
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,//to remove debug flag
      home:SignUp()
    );
  }
}







