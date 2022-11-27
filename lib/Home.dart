import 'package:app1/details.dart';
import 'package:app1/login.dart';
import 'package:app1/product.dart';
import 'package:flutter/material.dart';

class Listhome extends StatefulWidget {
  const Listhome({Key? key}) : super(key: key);

  @override
  State<Listhome> createState() => _ListhomeState();
}

class _ListhomeState extends State<Listhome> {
  int _selectedIndex=0;
   List widgetOptions = [
     Product(),
   ];
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: Text("HomePage")),
    
    body: ListView(children:List.generate(100, (index) =>  Padding(padding:const EdgeInsets.all(8.0),child: Container(height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
  color: const Color.fromARGB(255, 220, 218, 218)),))) ,),
  backgroundColor: Colors.red, 

bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
        ],
         currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,));

  }
}