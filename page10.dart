import 'package:flutter/material.dart';

class Page10 extends StatefulWidget {
  const Page10({super.key});

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  int _counter = 0;
  void _incrementcounter() {
    _counter++;
  }

  void _decrementcounter() {
    _counter--;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You clicked $_counter times'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _incrementcounter();
                });
              },
              child: const Text('ADD'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _decrementcounter();
                });
              },
              child: const Text('SUB'),
            ),
          ],
        ),
      ),
    );
  }
}
