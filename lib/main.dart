// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/models/cart.dart';
import 'package:e_commerce/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main (){
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
create: (context)=>Cart(), 
builder: (context,child)=>
 MaterialApp(
        theme: ThemeData(
          dividerTheme: const DividerThemeData(color: Colors.transparent),
        ),
      debugShowCheckedModeBanner: false, 
      home: IntroPage(),
      
      ),
    );
  }
}