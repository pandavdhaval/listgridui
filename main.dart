import 'package:flutter/material.dart';
import 'package:listgridui/register_demo.dart';
import 'package:listgridui/singin_demo.dart';
import 'package:listgridui/splash_screen.dart';
import 'package:sizer/sizer.dart';

import 'home_page.dart';
import 'listgrid_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)=>Sizer(builder: ( context,orientation,deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(context)=>HomePage(),
        '/List':(context)=> ListgrigUi(),
        '/register':(context)=> RegisterDemo(),
        '/signin':(context)=>SinginDemo(),
        '/home':(context)=> HomePage(),

      },
    );

  }
  );
}
