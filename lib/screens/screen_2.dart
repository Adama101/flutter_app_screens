import 'package:flutter/material.dart';

// ignore: camel_case_types
class Screen_2 extends StatelessWidget {
  const Screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(31, 51, 49, 49),
        title: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
          textAlign: TextAlign.left,
          ),
      ),
      body: Container(
        
      ),
    ));
  }
}
