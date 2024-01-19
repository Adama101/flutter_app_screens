import 'package:flutter/material.dart';

// ignore: camel_case_types
class Bottom_Nav_Bar extends StatelessWidget {
  const Bottom_Nav_Bar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(icons: Icon(Icons.home)),

    );
  }


}

