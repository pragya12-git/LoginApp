

import 'package:app1/Home.dart';
import 'package:app1/animated.dart';
import 'package:app1/login.dart';
import 'package:app1/product.dart';
import 'package:app1/upload.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  
 
   TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   
  
  List<Map> notes = [];
   final _formkey = GlobalKey<FormState>();
    bool showLoading = false;
      
    
   


   void adddata(){
    if (_formkey.currentState!.validate()) {
      setState(() {
        showLoading = true;
      });

     
    }

   
  
   

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Sign In")),
      body: Padding(
        padding: EdgeInsets.all(10),
          child: Form(
            key: _formkey,
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding:  EdgeInsets.all(10),
                child:  Text(
                  'Pragya Pranita',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding:  EdgeInsets.all(10),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding:  EdgeInsets.all(10),
              child: TextFormField(
               
                controller: nameController,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name'), validator: (value) {
                    if (value!.isEmpty) {
                      return "Name is required";
                    }
                    return null;
                  },

                 
                  
                 
              ),
              
            ),
             
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                 validator: (value) {
                    if (value!.isEmpty) {
                      return "Password is required";
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
                  child:  Row(
                    children: [
                      Text('Login'),showLoading?CircularProgressIndicator(color: Colors.white,):Container()
                      
                      
                    ],
                  ), 
                            
                  onPressed: () { 

                  //onLogin();
                  if(nameController.text =="pragya"&& passwordController.text=="1234"){
                      print("login is successful");
                    }else{
                      print("login fail");
                    }

                    
                  
                    
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Product(),));

                  },
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyWidget(),));
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )
     )));
  }


  void onLogin()async{
    if(_formkey.currentState!.validate()){
    setState(() {
      showLoading=true;
    });
     Map<String, dynamic> singleNote = {
                    "Name": nameController.text,
                    "Password": passwordController.text
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
            
             response.then((value) {
        if (value.id.isNotEmpty) {
          setState(() {
            showLoading = false;
          });
          nameController.clear();
          passwordController.clear();
          Fluttertoast.showToast(
              msg: "Data added succesfully!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          print("data is add and ref id is ${value.id}");
        } else {
          setState(() {
            showLoading = false;
          });
          Fluttertoast.showToast(
              msg: "sorry! unable to save data",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          print("sorry! unable to save data");
        }
      });
    }
  }
            }
                  
                    
                    

  
  
