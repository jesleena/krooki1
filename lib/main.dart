import 'package:flutter/material.dart';
import 'package:krooki1/mostviewed.dart';
import 'package:krooki1/photos.dart';


void main() => runApp(Krooki1());

class Krooki1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        theme: ThemeData(

       brightness: Brightness.light,
        //  tabBarTheme: TabBarTheme(labelColor: Colors.orange),
     // primaryColor: Colors.orange[50],


      fontFamily: 'SF Pro Display',

      textTheme: const TextTheme(

          headline1: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.bold),
          headline2: TextStyle(color: Colors.black,fontSize:16,fontWeight: FontWeight.w400),
          headline3: TextStyle(color: Colors.white,fontSize:11,fontWeight: FontWeight.w400),
          headline4: TextStyle(color: Colors.black,fontSize:11,fontWeight: FontWeight.w400),
          headline5: TextStyle(color: Colors.white,fontSize:19,fontWeight: FontWeight.w400),

          bodyText1: TextStyle(color: Colors.black,fontSize:15,fontWeight: FontWeight.normal),
          bodyText2: TextStyle(color: Colors.black,fontSize:14,fontWeight: FontWeight.normal),

          subtitle1: TextStyle(color: Colors.orangeAccent,fontSize:16,fontWeight: FontWeight.bold),
          subtitle2: TextStyle(color: Colors.orangeAccent,fontSize:16,fontWeight: FontWeight.w400),

        ),
      ),
      initialRoute:'mostviewed' ,
      routes:{
        Mostviewed.id: (context) =>Mostviewed(),
        Photos.id: (context) =>Photos(),

      },
    );
  }

}

