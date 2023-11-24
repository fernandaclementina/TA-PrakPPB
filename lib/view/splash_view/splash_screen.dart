import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>  const HomePage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height*1;
    final width=MediaQuery.sizeOf(context).width*1;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 211, 141),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/hellonewslogo.png',fit: BoxFit.cover,
              height: height*0.5,
            ),
            SizedBox(height: height*0.04,),
            Text('Hello News',style: GoogleFonts.anton(letterSpacing: .6,color: const Color.fromARGB(255, 185, 32, 32)),),
            SizedBox(height: height*0.04,),
            const SpinKitChasingDots(
              color: Color.fromARGB(255, 243, 128, 33),
              size: 48,
            ),
          ],
        ),
      ),
    );
  }
}
