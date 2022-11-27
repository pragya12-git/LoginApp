import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Carlist extends StatefulWidget {
  final String productName;
  const Carlist({super.key, required this.productName});

  @override
  State<Carlist> createState() => _CarlistState();
}

class _CarlistState extends State<Carlist> {

    Map<String, dynamic> products = {};
   
   

   Future<Map<String, dynamic>> getData() async {
    products.clear();
    print(widget.productName);
    var response = await FirebaseFirestore.instance.collection("Productlist").doc(widget.productName).get();
    print(response.data().runtimeType);
    products.addAll(response.data() as Map<String, dynamic>);
    
    return products;
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Carlist"),),

    body: FutureBuilder(
        future: getData(),
        builder: (context, data) {
          if (data.hasData) {
            return Column(children: [
             

             Text(products["price"]),

            ],);
          }
          if (data.hasError) {
            //display error message
          }
          return CircularProgressIndicator();
        },
      ),
     
     
    );
  }
}