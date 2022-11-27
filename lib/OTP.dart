import 'package:app1/New.dart';
import 'package:app1/OTpcame.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {

   TextEditingController studentTextCtrl = TextEditingController();
   TextEditingController EngTextCtrl = TextEditingController();
  TextEditingController phyTextCtrl = TextEditingController();
  TextEditingController cheTextCtrl = TextEditingController();
  TextEditingController BioTextCtrl = TextEditingController();
  TextEditingController ZoloTextCtrl = TextEditingController();
  List<Map> notes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         Padding(
          padding: const EdgeInsets.all(8.0),
        
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
                  hintText: "Student Name",
                  


          
    ),
    
    
    )),

     Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(decoration: InputDecoration(
                  hintText: "English Marks",
                  


          
    ),
     
    
    
    )),
     Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(decoration: InputDecoration(
                  hintText: "Physics Marks",
                  


          
    ),),),
     Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(decoration: InputDecoration(
                  hintText: "Biology Marks",
                  


          
    ),),),
     Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(decoration: InputDecoration(
                  hintText: "chemistry Marks",
                  


          
    ),),),
     Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(decoration: InputDecoration(
                  hintText: "Zology Marks",
                  


          
    ),),),
    SizedBox(height: 30,),
    ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Hompage() ,
    
                  ));
                  
                  
      
    }, child: Text("Next")),
    SizedBox(height: 10,),

    ElevatedButton(onPressed: () {
       Map singleNote = {
                      "Student Name": studentTextCtrl.text,
                      "Physics": phyTextCtrl.text,
                      "chemistry": cheTextCtrl.text,
                      "Biology": BioTextCtrl.text,
                      "English": EngTextCtrl.text,
                      "Zology": ZoloTextCtrl.text,
                    };

                    notes.add(singleNote);
                    print(notes);
      
    }, child:Text("add") )
   
    ])));
  }
}