import 'package:flutter/material.dart';

class Flower extends StatefulWidget {
  const Flower({Key? key}) : super(key: key);

  @override
  State<Flower> createState() => _FlowerState();
}

class _FlowerState extends State<Flower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("flower App"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: InkWell(
              onTap: () {
                print("print is rose");
              },
              onDoubleTap: () {
                print("on double tap");
              },
              child: Container(
                child: Image.network("https://i.pinimg.com/236x/a8/ba/f4/a8baf4b438b17e9cbf93101be13d56f8.jpg"),
              ),
            ),
          ),
          const Text(
            "Name:Rose",
            style: TextStyle(
                fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Description Of Flower",
            style: TextStyle(fontSize: 15, color: Colors.red),
          ),
          const Center(
              child: Text(
            "These flowers are used both outdoors and indoors",
            style: TextStyle(fontSize: 10, color: Colors.red),
          )),
          const Center(
              child: Text(
            "as they decorate and add peace to the vicinity very elegantly. ",
            style: TextStyle(fontSize: 10, color: Colors.red),
          )),
          const SizedBox(
            height: 80,
          ),
          const Text("Developed By Pragya Pranita")
        ],
      ),
    );
  }
}
