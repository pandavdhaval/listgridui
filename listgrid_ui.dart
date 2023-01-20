import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listgridui/register_demo.dart';
import 'package:listgridui/singin_demo.dart';
import 'package:sizer/sizer.dart';

class ListgrigUi extends StatefulWidget {
  const ListgrigUi({Key? key}) : super(key: key);

  @override
  State<ListgrigUi> createState() => _ListgrigUiState();
}

class _ListgrigUiState extends State<ListgrigUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
          child: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.cyan,
              image: DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqqcbqzJaCT9IMExhZdZVTMIgwpkOj4juUKQ&usqp=CAU'),fit: BoxFit.fill,
              )
            ),

            child: Column(
              children: [
                SizedBox(height: 25.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Daily Recipe',style:GoogleFonts.dancingScript(fontSize: 15.w,color: Colors.white,fontWeight:FontWeight.bold),),
                ),
                Text('Cooking Done The Easy Way',style: TextStyle(color: Colors.white),),

                SizedBox(height: 40.h,),
                Container(
                  height: 6.h,
                  width: 75.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff55a01),
                  ),
                  child: Center(child: GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterDemo()));
                      Navigator.pushNamed(context, '/register');
                    },
                      child: Text('Register',style: TextStyle(color:Colors.white,fontSize: 4.w,fontWeight: FontWeight.bold),)
                  )
                  ),
                ),
                SizedBox(height: 5.h,),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>SinginDemo()));
                    Navigator.pushReplacementNamed(context, '/signin');
                  },
                    child: Text('Sing In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 4.w,color: Colors.white),)

                ),
              ],
            ),
          ),
        ),


    );
  }
}
