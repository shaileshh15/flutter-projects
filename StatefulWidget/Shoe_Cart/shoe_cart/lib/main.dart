// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shoes"),
          centerTitle: false,
          backgroundColor: Colors.white,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: Image.network(
                  "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
