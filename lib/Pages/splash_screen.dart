import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodgo/Pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // ৩ সেকেন্ড পর হোম পেজে যাবে
    Timer(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  Home_page()), // নিশ্চিত করুন ক্লাসের নাম HomePage কি না
        );
      }
    });
  }


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color(0xFFEF2A39), Color.fromARGB(255, 248, 134, 144)],
                stops: [0.4, 1.0],
              ),
            ),
            height: double.infinity,
            width: double.infinity,
          ),

          SizedBox(height: 600, child: Image.asset('images/foodgo.png')),

          Stack(
            children: [
             
               Container(
                  alignment:  Alignment.bottomLeft,
                  child: Image.asset('images/image2.png'),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('images/image1.png'),
                ),
            
             
            ],
          ),
        ],
      ),
    );
  }
}
