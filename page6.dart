import "package:flutter/material.dart";

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(
          title: const Text(
            'DEMO TIME',
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.download,
                size: 24,
              ),
              label: const Text('Donwload'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.download,
                size: 24,
              ),
              label: const Text('Download'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.download,
                size: 24,
              ),
              label: const Text('Download'),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Row(mainAxisSize: MainAxisSize.min, children: [
                  Text('Download'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.download,
                    size: 24,
                  ),
                ]))
          ],
        )));
  }
}
