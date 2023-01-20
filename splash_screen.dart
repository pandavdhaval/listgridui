import 'dart:async';

import 'package:flutter/material.dart';

import 'listgrid_ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Timer(Duration(seconds:5),(){Navigator.pushNamed(context, '/List');});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Center(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHR5KMMcXXnGu00VJ2jimzWfZX16At-Txq0g&usqp=CAU')),
    );
  }
}
