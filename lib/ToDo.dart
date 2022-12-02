import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Asign extends StatefulWidget {
  const Asign({super.key});

  @override
  State<Asign> createState() => _AsignState();
}

class _AsignState extends State<Asign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("TO DO")),
    body:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("TO DO App",style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ),
        

        


        ],
    ) ,
    );
  }
}
