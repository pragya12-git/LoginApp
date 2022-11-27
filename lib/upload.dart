




import 'package:app1/details.dart';
import 'package:app1/prodadetaila.dart';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Upload extends StatefulWidget {
  const Upload({Key? key}) : super(key: key);

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
    
    List<Map<String, dynamic>> productdata = [];
  Future<List<Map<String, dynamic>>> getData() async {
    productdata.clear();
    var response = await FirebaseFirestore.instance.collection("Productlist").get();
    response.docs.forEach((element) {
      Map <String, dynamic>productkey={"productkey":element.id};
      Map<String, dynamic>productvalue= element.data();
      productvalue.addAll(productkey);
      productdata.add(productvalue);
    });
   //print(productdata);
    return productdata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Upload"),
    actions: [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.person),
    )],),

    body: 
       Center(
        child: FutureBuilder(
            future: getData(),
            builder: (context, data) {
              if (data.hasData) {
                //return Text("$productdata");
                
              return
                
                    ListView(children: List.generate(productdata.length, (index) 
                                 { return Padding(padding: const EdgeInsets.all(8.0),
                          child:InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                       Pro(
                         productID:productdata[index]["productkey"]
                      ,))); // Pro(productID:    //productdata[index]["productKey"]
                            
                            
                          },
                            child: Container(height: 140,decoration: BoxDecoration
                                   (borderRadius: BorderRadius.circular(10),color: Colors.white),
                                   child: Row(
                                              children: [
                                                Image.network("${productdata[index]["image"]}",height: 130,),
                                                
                                                 
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text("${productdata[index]["name"]}", style: const TextStyle(fontSize: 24),),
                                    Padding(
                                      padding:const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                                      child: Text("Rs${productdata[index]["price"]}",
                                      style: const TextStyle(fontSize: 15,color: Colors.red),),
                                    ),
                                   
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                                      child: Text("${productdata[index]["Description"]}",
                                      style: const TextStyle(fontSize: 17,color: Colors.blue),),
                                    ),
                                    
                                ],
                              )),
                               Row(
                                      children: [
                                
                                          
                                           Text("Qty-${productdata[index]["Qty"]}"),
                                        
                                      ],
                                     
                                               ),
                                               
                                      
                                    
                                 
                                      
                                 
                                     
                                                  
                                                
                                               
                                                  
                             
                                              ], 
                                                  ),
                                                  
                                 
                             
                                              ),
                                            
                                               
                          ),
                                 
                     );},
                    
                                 
                   
                    
                                 ),
                                   
                                 
                        
                
                  
              );
        
         
         
              
               
              
        
              
    
              
            
            
              
              
              
                
    
              }
              if(data.hasError) {
                return const Text("Error");
                
              }
              return  const CircularProgressIndicator();
            
            
          
       
      })),
    
   


    backgroundColor: Colors.red,
    );
  }
}