


import 'package:flutter/material.dart';
import 'package:flutter_application_4/home_page.dart';



void main(){
  runApp(
    const MaterialApp( 
      home: MyApp() 
    )
  );
}
  
class MyApp extends StatelessWidget {



    const MyApp({super.key});

  




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: HomePage(),
    );
    }

}








