import "package:flutter/material.dart";

void main() {
  runApp(const ContainerApp());
}

class ContainerApp extends StatefulWidget {
  const ContainerApp({super.key});
  @override
  State createState() {
    return _ContainerAppState();
  }
}

class _ContainerAppState extends State {
  bool colorchange = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Color App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 250,
            width: 250,
            color: (colorchange) ? Colors.red : Colors.yellow,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (colorchange) {
              colorchange = false;
            } else {
              colorchange = true;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
