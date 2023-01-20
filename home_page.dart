import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var like =false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
       appBar: AppBar(
         backgroundColor: Colors.black,
         actions: [
           Padding(
             padding: const EdgeInsets.only(right: 20),
             child: Icon(Icons.notification_add_outlined),
           )],
       ),
       drawer: Drawer(
         backgroundColor: Color(0xff2d2d2d),
         width: 80.w,
         child: Column(
           children: [
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CircleAvatar(maxRadius: 8.w,
                     backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQP7ARHenfnGXcxCIhmDxObHocM8FPbjyaBg&usqp=CAU'),

                   ),
                 ),
                  Column( children: [
                    Text('Emma Holmes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 5.w),),
                    Padding(
                      padding: const EdgeInsets.only(right: 55),
                      child: Text('View profile',style: TextStyle(color: Colors.white30),),
                    ),
                  ],
                  ),
                 SizedBox(width: 15.w,),
                 Icon(Icons.notification_add_outlined,color: Colors.white30,),
               ],
             ),
             SizedBox(height: 5.h,),
             ListTile(leading: Icon(Icons.home,color: Colors.white30,),title:Text('Home',style: TextStyle(color: Colors.white30),),),
             ListTile(leading: Icon(Icons.favorite_border,color: Colors.white30,),title:Text('Favorites',style: TextStyle(color: Colors.white30),),),
             ListTile(leading: Icon(Icons.video_library,color: Colors.white30,),title:Text('Resently Viewed',style: TextStyle(color: Colors.white30),),),
             ListTile(leading: Icon(Icons.settings,color: Colors.white30,),title:Text('Settings',style: TextStyle(color: Colors.white30),),),
             ListTile(leading: Icon(Icons.adb_sharp,color: Colors.white30,),title:Text('About Us',style: TextStyle(color: Colors.white30),),),
             ListTile(leading: Icon(Icons.help_outline,color: Colors.white30,),title:Text('Help',style: TextStyle(color: Colors.white30),),),
             ListTile(leading: Icon(Icons.schedule_send_outlined,color: Colors.white30,),title:Text('Sign Out',style: TextStyle(color: Colors.white30),),),
           ],
         ),
       ),
       body: Padding(
         padding: const EdgeInsets.only(left: 20),
         child: Column(
           children: [
             Row(
               children:[
               Text('Banjaur. Emma',style: TextStyle(color: Colors.white30,fontSize: 12),)
             ]
             ),

             Row(
               children: [
               Padding(
                 padding: const EdgeInsets.only(top: 5),
                 child: Text('What would you like to cook \n today?',style:GoogleFonts.alegreya(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
               ),
               ],
             ),
             Padding(
               padding: const EdgeInsets.only(top: 5),
               child: Row(
                 children: [
                   Container(
                     height: 7.h,
                     width: 70.w,
                     // color: Colors.blue,
                     child: TextFormField(
                       decoration: InputDecoration(
                         filled: true,
                       fillColor:Color(0xff2b2b2b),
                       prefixIcon: Icon(Icons.search_outlined),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                           borderSide: BorderSide.none,
                         ),
                         hintText: 'Search for recipes',
                         hintStyle:TextStyle(color: Colors.white12)
                       ),
                     ),
                   ),
                   SizedBox(width: 2.w,),
                   Container(
                     height: 7.h,
                     width: 12.w,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Color(0xff2b2b2b),
                     ),
                     child: Icon(Icons.cable_sharp,color: Colors.white70,),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 10),
               child: Row(
                 children: [
                   Text('Todays Fresh Recipes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                   SizedBox(width: 150,),
                   Text('See All',style: TextStyle(color: Color(0xfff06900)),),
                 ],
               ),
             ),

             SizedBox(height: 10,),
             Container(
               height: 28.h,
               width: 100.w,
                 // color: Colors.black,
               child: ListView.separated(
                 itemCount:  model.length,
                scrollDirection: Axis.horizontal,
                   itemBuilder: (context,index){
                 return Container(
                   height: 10.h,
                   width: 45.w,
                   decoration: BoxDecoration(
                     color: Color(0xff2b2b2b),
                     borderRadius: BorderRadius.circular(20),
                   ),

                   child: Padding(
                     padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                     child: Column(
                       children: [
                          Row(
                           children: [
                             GestureDetector(
                               onTap: (){
                                 like=!like;
                                 setState(() {
                                 });
                               },
                               child: Icon(Icons.favorite,color: like==true? Colors.red:Colors.black,),
                             ),

                           ],
                         ),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Container(
                               height: 10.h,
                               width: 35.w,
                               // color: Colors.green,
                               decoration: BoxDecoration(
                                 color: Colors.black,
                                 borderRadius: BorderRadius.circular(10),
                                 image: DecorationImage(image: NetworkImage(model[index].images!),fit: BoxFit.cover),
                                 )
                               ),
                           ],
                         ),

                         SizedBox(height: 1.h,),

                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(model[index].title!,style: TextStyle(fontSize: 10,color: Colors.teal),),
                             Text(
                               model[index].subtitle ?? " ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                           ],
                         )

                         // Row(
                         //   children: [
                         //     Text(model[index].title!,style: TextStyle(fontSize: 10,color: Colors.teal),),
                         //   ],
                         // ),
                         //
                         // Row(
                         //   children: [
                         //     Text(textAlign: TextAlign.center,
                         //       model[index].subtitle ?? " ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                         //   ],
                         // ),



                       ],

                     ),
                   ),
                 );
               }, separatorBuilder: (context,index){
                 return SizedBox(width: 30,);
               },),
             ),
           ],
         ),
       ),
      ),
    );
  }
}















class firstlist{
  String? images;
  String? title;
  String? subtitle;

  firstlist ({this.images,this.title,this.subtitle});

}


List <firstlist> model = [
  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQedWYhekP_aG7Us7JxJQdqTxPNFcdOP0RlaQ&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),

  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQedWYhekP_aG7Us7JxJQdqTxPNFcdOP0RlaQ&usqp=CAU",
    title:"varachha",
    subtitle: "Brown Suger Cinnamon Toast",
  ),

  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1a496hwu0nJyjApWQpmOWaZ5TqG8cLqfgA&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),

  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1a496hwu0nJyjApWQpmOWaZ5TqG8cLqfgA&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),

  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1a496hwu0nJyjApWQpmOWaZ5TqG8cLqfgA&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),

  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1a496hwu0nJyjApWQpmOWaZ5TqG8cLqfgA&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),

  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1a496hwu0nJyjApWQpmOWaZ5TqG8cLqfgA&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),

  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1a496hwu0nJyjApWQpmOWaZ5TqG8cLqfgA&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),

  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1a496hwu0nJyjApWQpmOWaZ5TqG8cLqfgA&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),


  firstlist(
    images:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX1a496hwu0nJyjApWQpmOWaZ5TqG8cLqfgA&usqp=CAU",
    title:"katargam",
    subtitle: "French Toost with Berries",
  ),
];