import 'package:flutter/material.dart';

 void main()=>runApp(MainScreen());


 class MainScreen extends StatefulWidget {
   const MainScreen({Key? key}) : super(key: key);

   @override
   _MainScreenState createState() => _MainScreenState();
 }

 class _MainScreenState extends State<MainScreen> {



   @override
   Widget build(BuildContext context) {

    /* final MediaQueryData _mediaQueryData = MediaQuery.of(context);
     final  screenWidth = _mediaQueryData.size.width;
     final  screenHeight = _mediaQueryData.size.height;*/



     return MaterialApp(
       debugShowCheckedModeBanner: false,

       home: Scaffold(

         body: LayoutBuilder(


           builder: (context, snapshot) {

             print(MediaQuery.of(context).size.width);

             return Container(

               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,

               child:
                  ((MediaQuery.of(context).size.width) < 361)?
                Container(

                 color: Colors.yellow,

               ) : Container(

                 color: Colors.red,



               ),
             );
           }
         )
         
       ),

     );
   }
 }
