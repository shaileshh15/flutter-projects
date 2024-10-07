import "package:flutter/material.dart";

void main() {
  runApp(const Color());
}

class Color extends StatefulWidget {
  const Color({super.key});

  @override
  State createState() => _ColorState();
}

class _ColorState extends State {
  int counter = 0;

  List<String> ceoList = [
    "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
    "https://imgeng.jagran.com/images/2023/apr/Sachin11682274529876.jpg",
    "https://bsmedia.business-standard.com/_media/bs/img/article/2022-03/15/full/1647365891-7103.jpg",
    "https://images.indianexpress.com/2023/09/Rahul-15.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBarColor"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                ceoList[counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (counter < ceoList.length - 1) {
              counter++;
            } else {
              counter = 0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
