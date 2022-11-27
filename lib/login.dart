import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController namectrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();
   List<Map> notes = [];
  final formkey = GlobalKey<FormState>();

  void validate(){
    if (formkey.currentState!.validate()){
      print("validated");
    }else{
      print("not validated");
    }
    Map<String, dynamic> singleNote = {
      "name": namectrl.text,
      "password": passwordctrl.text
    };
    print(singleNote);
  
  var responses =FirebaseFirestore.instance.collection("Pragyalist").where("name",isEqualTo: namectrl.text).snapshots();
      responses.first.then((value) async {
        if(value.docs.isNotEmpty){
          print("user Name already register");
        }else {
          var response = FirebaseFirestore.instance.collection("Pragyalist").add(singleNote);
          var serverresponse =  await  response;
           if(serverresponse.id.isNotEmpty){
            print("Registration successfull");
          }else{
            print("Regitration failed");
          }
          }
        }
      );
  

  
 
        
  

}
@override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Create Account"),),
     body:Padding(padding:EdgeInsets.all(10),
     child:Form(
      key: formkey,
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),),
            Container(
              
                padding:  EdgeInsets.all(10),
                child:  Text(
                  'Enter your name and Password for Sign up',
                  style: TextStyle(fontSize: 20)
                ) ),TextButton(onPressed: () {Navigator.pop(context);
                  
                }, child: Text("Already have account")),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: namectrl,
                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
                validator: (value) {
                    if (value!.isEmpty) {
                      return " required";
                    }
                    return null;
                  },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                controller: passwordctrl,
                obscureText: true,
                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                validator: (value) {
                    if (value!.isEmpty) {
                      return "  required";
                    }
                    return null;
                  },
              ),
            ),
            SizedBox(height: 10,),
            
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Register'),
                  onPressed: () {validate();
                  getData();
                  

                   Map<String, dynamic> singleNote = {
                  "name": namectrl.text,
                "password": passwordctrl.text
               };
               print(singleNote);
                  var response = FirebaseFirestore.instance
                      .collection("Pragyalist")
                      .add(singleNote);
                       response.then((value) {
                    if (value.id.isNotEmpty) {
                      print("data is add and ref id is ${value.id}");
                    } else {
                      print("sorry! unable to save data");
                    }
                  });
                 },
                )
            ),
          ]
            ),
          
        )),
        
        );
  }
  void getData() {
    var response = FirebaseFirestore.instance.collection("Pragyalist").get();
    response.then((value) {
      List x = [];
      //  print(value.docs.length);
      value.docs.forEach((element) {
        x.add(element.data());
      });

      print("firebase datas are: $x");
      //return value.docs.first;
    });
  }
    
      
    }
    
  






    
    
    
  
    
    
  

