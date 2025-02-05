import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26), bottomRight: Radius.circular(26)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
              ),
              Text("Who Am I?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Container(
                height: 20,
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              Container(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      "https://cdn-icons-gif.flaticon.com/17905/17905521.gif",
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Name: Omar Yasser",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  counter++;
                                });
                              },
                              icon: Icon(Icons.add)),
                          Text(
                            "Age:$counter years",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (counter > 1) {
                                    counter--;
                                  }
                                });
                              },
                              icon: Icon(Icons.remove)),
                        ],
                      ),
                      Text(
                        "Nationality: Egyptian",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
