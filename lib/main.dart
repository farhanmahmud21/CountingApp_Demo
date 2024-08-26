import 'package:flutter/material.dart';

void main() {
  runApp(const CountingApp());
}

class CountingApp extends StatefulWidget {
  const CountingApp({super.key});

  @override
  State<CountingApp> createState() => _CountingAppState();
}

class _CountingAppState extends State<CountingApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text('Counting App'),
          centerTitle: true,
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              onPressed: () {
                setState(() {
                  counter = counter + 1;
                });
              },
              child: const Icon(Icons.add),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.lime,
              onPressed: () {
                setState(() {
                  counter = counter - 1;
                });
              },
              child: const Icon(Icons.minimize),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Icon(Icons.close),
            )
          ],
        ),
        body: Center(
          child: Text(
            counter.toString(),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
