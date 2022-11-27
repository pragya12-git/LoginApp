

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class OTPcame extends StatefulWidget {
   
   OTPcame({Key? key, }) : super(key: key);

   


  @override
  State<OTPcame> createState() => _OTPcameState();
}

class _OTPcameState extends State<OTPcame> {
   final dataMap = <String, double>{
    "English": 46,
    "Physics": 30,
    "chemistry": 20,
    "Zology": 30,
    "Biology":25,
  };

  final colorList = <Color>[
    Colors.greenAccent,
    Colors.black,
    Colors.red,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Marks list"),),
     body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: PieChart(
          dataMap: dataMap,
          chartType: ChartType.ring,
          baseChartColor: Colors.grey[300]!,
          colorList: colorList,
        ),
      ),
    








    
    ) ;
  }
   
      
    
  }
  
  
  
