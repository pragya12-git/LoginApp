import 'package:flutter/material.dart';

class Anima extends StatefulWidget {
  const Anima({super.key});

  @override
  State<Anima> createState() => _AnimaState();
}

class _AnimaState extends State<Anima> {
  double length=50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Animation Example"),),

        body: Center(
          child: AnimatedContainer(
           height: length,
           width: length,
            color: Colors.red,
           
            duration:  Duration(seconds: 5),
            curve: Curves.bounceIn,
            child: Material(
              color: Colors.red,
              child: InkWell(onTap: () {
                setState(() {
                  length==50? length=100: length=50;
                });
              },),
            ),
           
          ),
          

          
          
        
          
        ),
        floatingActionButton:  FloatingActionButton(onPressed: () {
          Icon(Icons.check_rounded);
        },),

        
        
      
        
       
    );
  }
}