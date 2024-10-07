import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarColor(),
    );
  }
}

class AppBarColor extends StatefulWidget {
  const AppBarColor({super.key});

  @override
  State createState() {
    return _AppBarColorState();
  }
}

class _AppBarColorState extends State {
  bool colorchange = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppbarColorChange"),
        centerTitle: true,
        backgroundColor: (colorchange) ? Colors.blue : Colors.red,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Change Only Appbar color"),
          ],
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
    );
  }
}
