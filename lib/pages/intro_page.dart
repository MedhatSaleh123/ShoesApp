// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'assets/images/nike.png',
                height: 240,
              ),
            ),
            SizedBox(height: 48,), 
            Text("Just Do It",style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 20,
            ),), 
            SizedBox(height: 24,),
             Text("Brand new sneakers and custom kicks mad with premium quality",
             textAlign: TextAlign.center,
             style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),), 
            SizedBox(height: 48,), 
            GestureDetector(
              onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) {
                return HomePage();
              },)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900], 
                  borderRadius: BorderRadius.circular(12) ,
              
                ),child: Padding(padding: EdgeInsets.all(25), 
                child: Center(
                  child: Text("Shop Now",style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold, 
                    fontSize: 16,
                  ),),
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
