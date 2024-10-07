import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() {
    return _MyappState();
  }
}

class _MyappState extends State<MyApp>{

  int count = 0;

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter_Application"),
          backgroundColor : Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Text("$count"),

        ),

        floatingActionButton : FloatingActionButton(onPressed: (){
          count++;
          setState((){});
        },
        child: const Icon(Icons.add),
        )
      ),
    );
  }
}



