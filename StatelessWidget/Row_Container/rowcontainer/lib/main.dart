import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row Container"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: center
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
          height: 100, 
          width: 100, 
          color: Colors.red
          ),

          Container(

            height: 100,
            width: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            width: 100,
            color:Colors.yellow ,
          ),
          ],
        ),
      ),
    );
  }
}
