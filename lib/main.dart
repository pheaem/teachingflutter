import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.lightBlue,
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(
              fontSize: 14.0,
            ),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.black26,
        child: ListTile(),
      ),
      appBar: AppBar(
        // leading: const Text(
        //   'LG',
        //   textAlign: TextAlign.center,
        //   style: TextStyle(fontSize: 30.0),
        // ),
        title: const Text("This is App"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.access_alarm)),
        ],
      ),
      // ignore: prefer_const_constructors
      body: Column(
        children: [
          Container(
            height: 12.0,
            width: 100,
            color: Colors.amber,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
          ),
          Container(
            height: 12.0,
            width: 100,
            color: Colors.amber,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.expand(height: 100, width: 100),
            child: const Card(child: Text('Hello World!')),
          ),
          const Image(
            image: AssetImage("assets/komisan.jpg"),
          ),
        ],
      ),
    );
  }
}
