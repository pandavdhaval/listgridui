import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listgridui/register_demo.dart';
import 'package:sizer/sizer.dart';

class SinginDemo extends StatefulWidget {
  const SinginDemo({Key? key}) : super(key: key);

  @override
  State<SinginDemo> createState() => _SinginDemoState();
}

class _SinginDemoState extends State<SinginDemo> {
  var add = TextEditingController();
  var pass = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var iconn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqqcbqzJaCT9IMExhZdZVTMIgwpkOj4juUKQ&usqp=CAU'),fit: BoxFit.fill,
              )
            ),
            child: Column(
              children: [
                SizedBox(height: 15.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Daily Recipe',style:GoogleFonts.dancingScript(fontSize: 15.w,color: Colors.white,fontWeight:FontWeight.bold),),
                ),
                SizedBox(height: 3.h),
                Text('Sign In',style: TextStyle(color:Colors.white,fontSize: 5.w,fontWeight: FontWeight.bold),),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: add,
                    validator: (v){
                      if(v!.isEmpty){
                        return 'enter email add';
                      }
                      else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(v!)){
                        return'enter gmail.come';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline,color: Colors.white.withOpacity(0.3),),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: pass,
                    validator: (v){
                      if(v!.isEmpty){
                        return 'enter pass';
                      }
                      else if (v.length<=10){
                        return'enter 10 ch';
                      }
                    },
                    obscureText:iconn,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,color: Colors.white.withOpacity(0.3),),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15),
                      suffixIcon: IconButton(
                        icon: Icon(iconn ? Icons.remove_red_eye:Icons.remove_red_eye_outlined),
                        onPressed: (){
                          iconn=!iconn;
                          setState(() {

                          });
                        },
                      )
                    ),
                  ),
                ),
                Row(children: [
                  SizedBox(width: 67.w),
                  Text('Forgot password',style: TextStyle(color: Colors.blue),),
                ],),


                SizedBox(height: 5.h,),

                Container(
                  height: 7.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xfff55a01),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child:
                  GestureDetector(
                    onTap: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.pushNamed(context,'/home');
                      }
                    },
                      child: Text("Sign In",style: TextStyle(color: Colors.white),)
                  ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text('Dont have on account ?',style: TextStyle(color: Colors.white12),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterDemo()));
                      },
                        child: Text('Register.',style: TextStyle( color: Color(0xfff55a01)),)
                    ),
                  ],)
              ],

            ),
          ),
        ),
      ),
    );
  }
}
