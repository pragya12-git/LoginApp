
import 'dart:async';
import 'dart:io';
import 'package:app1/OTpcame.dart';
import 'package:app1/Sms.dart';
import 'package:app1/imagepicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

import 'package:image_picker/image_picker.dart';

class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Student Marks Calculation")),

    body:   Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              
              height: 50,),
              ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => OTPcame(),));
                
              }, child: Text(" Students Marks")),

              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => imagepicker(),));
                
              }, child: Icon(Icons.camera)),
               SizedBox(height: 20,),
              ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Sms(),));
                
              }, child: Icon(Icons.message))
         ])) );
  }
}