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
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Action Movies",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          padding: const EdgeInsets.all(5),
                          child: Image.network(
                              "https://cdn.mos.cms.futurecdn.net/Fhbwf7GVTTNWrFnyvV4Jj6-1200-80.jpg"),
                        ),
                        Container(
                          height: 300,
                          width: 200,
                          padding: const EdgeInsets.all(5),
                          child: Image.network(
                              "https://cdn.mos.cms.futurecdn.net/Fhbwf7GVTTNWrFnyvV4Jj6-1200-80.jpg"),
                        ),
                        Container(
                          height: 300,
                          width: 200,
                          padding: const EdgeInsets.all(5),
                          child: Image.network(
                              "https://cdn.mos.cms.futurecdn.net/Fhbwf7GVTTNWrFnyvV4Jj6-1200-80.jpg"),
                        ),
                        Container(
                          height: 300,
                          width: 200,
                          padding: const EdgeInsets.all(5),
                          child: Image.network(
                              "https://cdn.mos.cms.futurecdn.net/Fhbwf7GVTTNWrFnyvV4Jj6-1200-80.jpg"),
                        ),
                        Container(
                          height: 300,
                          width: 200,
                          padding: const EdgeInsets.all(5),
                          child: Image.network(
                              "https://cdn.mos.cms.futurecdn.net/Fhbwf7GVTTNWrFnyvV4Jj6-1200-80.jpg"),
                        ),
                        Container(
                          height: 300,
                          width: 200,
                          padding: const EdgeInsets.all(5),
                          child: Image.network(
                              "https://cdn.mos.cms.futurecdn.net/Fhbwf7GVTTNWrFnyvV4Jj6-1200-80.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            ),
      ),
    );
  }
}
