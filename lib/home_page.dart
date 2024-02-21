import 'dart:convert';
import 'package:flutter_application_4/crypto_lits.dart';


import 'package:flutter/material.dart';
import 'package:flutter_application_4/data/constants.dart';

class HomePage extends StatefulWidget{
  HomePage({
    super.key
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> data = [];

  @override
  void initState(){
    data = jsonDecode(CRYPTO_EXCHANGES);
    super.initState();
  }
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      
        title: Text('Crypto Look'),
      
      ),
      body: Crypto_List(data: data)
    
    );
  
  }
}

