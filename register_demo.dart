import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listgridui/singin_demo.dart';
import 'package:sizer/sizer.dart';

import 'listgrid_ui.dart';

class RegisterDemo extends StatefulWidget {
  const RegisterDemo({Key? key}) : super(key: key);

  @override
  State<RegisterDemo> createState() => _RegisterDemoState();
}

class _RegisterDemoState extends State<RegisterDemo> {
   var  full = TextEditingController();
    var email= TextEditingController();
    var passe=TextEditingController();
     final _formKey = GlobalKey<FormState>();
  var pass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key:_formKey,
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
                  SizedBox(height: 15.h,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Daily Recipe',style:GoogleFonts.dancingScript(fontSize: 15.w,color: Colors.white,fontWeight:FontWeight.bold),),
                  ),
                  SizedBox(height:3.h,),
                  Text('Register',style: TextStyle(color:Colors.white,fontSize: 4.w,fontWeight: FontWeight.bold),),


                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      controller: full,
                      validator: (v){
                        if(v!.isEmpty){
                          return 'enter full name';
                        }
                        else if(v.length <=5){
                          return 'enter name';
                        }
                      },
                      decoration: InputDecoration(

                        prefixIcon: Icon(Icons.perm_identity,color: Colors.white.withOpacity(0.3),),
                        // labelText: ('Full Name'),
                        hintText: ('Full Name'),
                        labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                     controller:email ,
                      validator: (v){
                       if(v!.isEmpty){
                         return 'enter email';
                       }
                       else if (v.length<=10){
                         return '@gmail.come';
                       }
                      },
                      
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined,color: Colors.white.withOpacity(0.3),),
                        // labelText: ('Full Name'),
                        hintText: ('Email Address'),
                        labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 15),

                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                         controller: passe,
                      validator: (v){
                           if(v!.isEmpty){
                             return "enter pass";
                           }
                           else if(v.length <=6){
                             return 'mini 6 num';
                           }
                      },
                      obscureText: pass,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline,color: Colors.white.withOpacity(0.3),),
                        // labelText: ('Full Name'),
                        hintText: ('Passward'),
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),

                        suffixIcon:IconButton(
                        icon: Icon(pass ? Icons.remove_red_eye_outlined:Icons.remove_red_eye),
                          onPressed: (){
                          pass=!pass;
                          setState(() {

                          });
                          },
                        )
                      ),
                    ),
                  ),

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
                            // Navigator.push(context, MaterialPageRoute(builder:(context)=>ListgrigUi()));
                            Navigator.pushNamed(context, '/home');
                          }
                        },
                        child: Text("Register",style: TextStyle(color: Colors.white),),

                    ),
                    ),
                  ),
              SizedBox(height: 10.h,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children:
              [
                Text('Already registered?',style: TextStyle(color: Colors.white12),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SinginDemo()));
                  },
                    child: Text('Sign In.',style: TextStyle( color: Color(0xfff55a01)),)
                ),
              ],)
                ],
              )
            ),
          ),
        ),
    );
  }
}
