
 




import 'package:app1/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Cart.dart';



 class Pro extends StatefulWidget {
  final  String productID;
  const Pro({super.key, required this.productID});

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
 
     Map<String, dynamic> product = {};
     
       
   

   Future<Map<String, dynamic>> getData() async {
    product.clear();
    print(widget.productID);
    var response = await FirebaseFirestore.instance.collection("Productlist").doc(widget.productID).get();
    print(response.data().runtimeType);
    product.addAll(response.data() as Map<String, dynamic>);
    
    return product;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Example'),),
     body: FutureBuilder(
        future: getData(),
        builder: (context, data) {
          if (data.hasData) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Image.network(product["image"], height: 250,width:450 ,),
                Row(
                  children: [
                    Text(product["name"], style: TextStyle(fontSize: 24,color: Colors.red),),
                  ],
                ),
                Row(
                  children: [
                    Text(product["price"],style: TextStyle(fontSize: 24,color: Colors.red),),
                  ],
                ),
                Row(
                  children: [
                    Text(product["Description"],style: TextStyle(fontSize: 24,color: Colors.red),),
                  ],
                ),
                 Row(
                   children: [
                     Text("Aurela Brand",style: TextStyle(fontSize: 24,color: Colors.red),),
                   ],
                 ),
                Row(
                  children: [
                    Text("2",style: TextStyle(fontSize: 24,color: Colors.red),),
                  ],
                ),
                Row(
                  children: [
                    Text("5Kg",style: TextStyle(fontSize: 24,color: Colors.red),),
                  ],
                ),
                Row(
                  children: [
                    Text("20% discount",style: TextStyle(fontSize: 24,color: Colors.red),),
                  ],
                ),

                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ElevatedButton(onPressed: () {
                  
                     
                    
            
                    
                  }, child: Text("Add to Cart")),
                )
                
              
                
                

              ],),
            );

          }
          if (data.hasError) {
            
          }
          return CircularProgressIndicator();
        },
      ),
   
            // load data
         
    
    );
  }

 addtocart()async{
    var FirebaseAuth;
    String uid = FirebaseAuth.instance.currentUser!.uid;
    Map<String,dynamic> addCart={
        "userid":uid,
        "productID":product["productkey"],
        "qty":1,
      };

      var response= await FirebaseFirestore.instance.collection("Cartlist").add(addCart);
      if(response.id.isNotEmpty){
          print("item added successfully");
      }else{
        print("Please login First");
      }
    }
    

  }
  
  
  
  


 


