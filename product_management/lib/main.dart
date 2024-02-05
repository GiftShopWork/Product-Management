import 'package:flutter/material.dart';
import 'package:product_management/Screens/EmployeeHomePage.dart';
import 'package:product_management/Screens/SignupScreen.dart';
import 'Screens/LoginScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EmployeeHomePage(),
    );
  }
}