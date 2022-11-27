import 'package:app1/anopage.dart';
import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  GlobalKey<FormState> formkey=GlobalKey<FormState>();

  void validate(){
    if(formkey.currentState!.validate()){
      print("validated");
    }else{
      print("not validated");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         Padding(
          padding: const EdgeInsets.all(8.0),
          child:Form(key: formkey,
          child: ListView(children: <Widget>[SizedBox(height: 30,),
             Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child:CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 50,
          
        ), ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(decoration: InputDecoration(
                hintText: "Username"
              ),
              validator: (value){
                if(value!.isEmpty){
                  return"name is required";
                }
                return null;
              }
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(decoration: InputDecoration(
                  hintText: "Password",
                  
                ),
                validator: (value) {
                    if (value!.isEmpty) {
                      return "password is required";
                    }
                    return null;
                  },
                ),
             ),
             SizedBox(height: 15,),
             ElevatedButton(onPressed: validate,//() {Navigator.push
             //(context, MaterialPageRoute(builder: (context) => Ano(),));},
              child: Text("Login")),


            
          ],),
        ),
      ));
  
      
       
                              
        
                    
                      
                    
                
              
            
  

        
      
  }
}