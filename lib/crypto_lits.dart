import 'package:flutter/material.dart';
import 'package:flutter_application_4/details_page.dart';
class Crypto_List extends StatelessWidget {
  const Crypto_List({
    super.key,
    required this.data,
  });

  final List data;
  final String placeholder = "https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png";
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: data.length,
      
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          

          title: Text("${data[index]["name"]}"),
          subtitle: Text("${data[index]["country"]}\n${data[index]["year_established"]}"),
          trailing: CircleAvatar(
            child: Text("${data[index]["trust_score"]}")
          ),
          leading:Image.network(data[index]["image"], errorBuilder:(BuildContext context, Object exception, StackTrace? stackTrace){
            return SizedBox(width:50, height: 50, child:Image.network(placeholder));}),
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>details_page(date:"${data[index]["year_established"]}",img:"${data[index]["image"]}",description:"${data[index]["description"]}",name:"${data[index]["name"]}" ,)));},
        );
      },
      
    );
  }
}