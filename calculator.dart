import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController value1controller = TextEditingController();
  TextEditingController value2controller = TextEditingController();
  late dynamic output;

  @override
  void initState() {
    output = 0;
    super.initState();
  }

  txtboxStyle(String label) => InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        prefixIcon: const Icon(Icons.numbers),
      );
  BtnStyle(color) => ElevatedButton.styleFrom(
        primary: color,
        minimumSize: const Size.fromHeight(50),
      );
  var txtStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
  );
  Calculate(val1, val2, type) {
    val1 = int.parse(val1);
    val2 = int.parse(val2);
    setState(() {
      if (type == 'add') {
        output = val1 + val2;
      } else if (type == 'subtract') {
        output = val1 - val2;
      } else if (type == 'multiply') {
        output = val1 * val2;
      } else if (type == 'divide') {
        output = val1 / val2;
      } else
        output = "invalid output";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Calculator'),
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: value1controller,
              decoration: txtboxStyle('Enter Label 1'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: value2controller,
              decoration: txtboxStyle('Enter Label 2'),
            ),
            ElevatedButton(
              style: BtnStyle(Color.fromARGB(255, 247, 91, 195)),
              onPressed: () {
                Calculate(
                  value1controller.text,
                  value2controller.text,
                  'add',
                );
              },
              child: const Text('ADD'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: BtnStyle(Color.fromARGB(255, 245, 248, 86)),
              onPressed: () {
                Calculate(
                  value1controller.text,
                  value2controller.text,
                  'subtract',
                );
              },
              child: const Text('SUBTRACT'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: BtnStyle(Color.fromARGB(255, 85, 233, 171)),
              onPressed: () {
                Calculate(
                  value1controller.text,
                  value2controller.text,
                  'multiply',
                );
              },
              child: const Text('MULTIPLY'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: BtnStyle(Color.fromARGB(255, 59, 210, 248)),
              onPressed: () {
                Calculate(
                  value1controller.text,
                  value2controller.text,
                  'divide',
                );
              },
              child: const Text('DIVIDE'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'OUTPUT: $output',
              style: txtStyle,
            ),
          ],
        ),
      )),
    );
  }
}
