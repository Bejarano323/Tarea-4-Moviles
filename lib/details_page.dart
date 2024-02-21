
import 'package:flutter/material.dart';

class details_page extends StatelessWidget {
  final String name;
  final String description;
  final String date;
  final String img;
  const details_page({
    super.key, 
    required this.name,
    required this.description,
    required this.date,
    required this.img
    });
 
    final String placeholder = "https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(title: Text("Detalles"),),
      body: Container(
        child: Column(
          children: [
            
            Center(child:Container(child: Text(this.name,style: TextStyle(fontSize: 25))) ),

            Center(child:Container(margin: EdgeInsets.only(top:40), child:Image.network(this.img,errorBuilder:(BuildContext context, Object exception, StackTrace? stackTrace){
            return SizedBox(width:50, height: 50, child:Image.network(placeholder));})) ),
            
            Container(margin:EdgeInsets.all(60), child: Text(this.description.length >0 ?this.description:"Placeholder",  style: TextStyle(fontSize: 20)),),
            

            ],
            

        ),
      ),

    );
  }
}