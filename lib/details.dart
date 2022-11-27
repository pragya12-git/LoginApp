



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Prepare extends StatefulWidget {
   const Prepare({Key? key}) : super(key: key);
 

  @override
  State<Prepare> createState() => _PrepareState();
}

class _PrepareState extends State<Prepare> {
  var idController= new TextEditingController();
  var nameController=new TextEditingController();
  var actualController=new TextEditingController();
  var disController= new TextEditingController();
  var imageController= new TextEditingController();
  var quantityController=new TextEditingController();
  var desController=new TextEditingController();
  var brandController=new TextEditingController();
  var CateController= new TextEditingController();
  var ppController= new TextEditingController();

  





  
  
  
  
  
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title: Text("Details")),
    body: Padding(padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Product Data',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
        )),
         Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Product id',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Product Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:actualController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Actual price',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:disController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Discount price',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:imageController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Image',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:quantityController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Quantity',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:desController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Description',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:brandController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Brands',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:CateController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  Categories',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller:ppController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '  SLU',
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {Map<String,dynamic> data={
              "productid":idController.text,
              "productname":nameController.text,
              "discountprice":disController.text,
              "actualprice":actualController.text,
              "image":imageController.text,
              "Quantity":quantityController.text,
              "description":desController.text,
              "brand":brandController.text,
              "Categories":CateController.text,
              "SLU":ppController.text,


            };

             idController.clear();
      nameController.clear();
      actualController.clear();
      disController.clear();
      imageController.clear();
      quantityController.clear();
      desController.clear();
      brandController.clear();
      CateController.clear();
      ppController.clear();
            
            
         

      FirebaseFirestore.instance.collection("Productlist").add(data);
            }, child: Text("Approved")),

            
            
              
              
          ]),
           
  
   
    ),);
  }
  
 
      
}