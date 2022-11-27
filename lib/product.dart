import 'package:app1/upload.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Product  extends StatelessWidget {
   Product({Key? key}) : super(key: key);
 List<Map<String, dynamic>> maps=[{"name": "Bengali dress",
  "price":"300",
  "Description":"very Comfortable",
  "Qty":"5",
  "image":"https://images-na.ssl-images-amazon.com/images/I/51BBoPOmE-L._AC_UX385_.jpg" ,
  "Categories":"2",
  "Product Id":"Kurtha",
  "Actual  Price":"300",
  "Discount Price":"3%",

 },
 {
"name": "Traditional dress",
  "price":"4000",
  "Description":" Comfortable",
  "Qty":"6",
  "image":"https://i.pinimg.com/originals/a3/33/db/a333db98d3a3c2fe3d50767851209e5c.jpg", 

  "Product Id":"Umbrella Kurtha",
  "Product Name":"Kurta",
  "Actual  Price":"4000",
  "Discount Price":"10%",
 },

  {
"name": "Lenhenga choli",
  "price":"5000",
  "Description":" Comfortable",
  "Qty":"7",
  "image":"https://cdn0.weddingwire.in/article/7021/original/1280/jpg/91207-latest-lehanga-designs-and-colours-anamika-khanna-floral-love.jpeg", 
  "Product Id":"Lehenga",
  
  "Actual  Price":"5000",
  "Discount Price":"5%",
 },
 {
"name": "Bridal Lehengal",
  "price":"5000",
  "Description":" for Bridal",
  "Qty":"5",
  "image":"https://wedbook.in/wp-content/uploads/2021/08/1.-Lehenga-Trends-819x1024.jpg", 
  "Product Id":"Lenhenga",
  
  "Actual  Price":"500O",
  "Discount Price":"3%",
 },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("product")),
     body: Center(
      child: ElevatedButton(onPressed: () { 
      for(var i =0; i < maps.length;i++){
      Map<String, dynamic> singlemav=maps[i];
       FirebaseFirestore.instance
      .collection("Productlist")
      .add(singlemav);
       Navigator.push(context, MaterialPageRoute(builder: (context) => const Upload(),));
     }
       
     },
      child: Text("upload Product")),),
    );
  }
}