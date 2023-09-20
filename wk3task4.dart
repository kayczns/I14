import 'package:flutter/material.dart';

class wk3task4 extends StatelessWidget {
  const wk3task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Textfield Designs',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term',
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your username',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search something',
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Type something here',
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                ),
                child: TextField(
                  minLines: 10,
                  maxLines: 20,
                  decoration: const InputDecoration(
                    hintText: 'Type something here',
                    contentPadding: const EdgeInsets.all(15),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    icon: Icon(Icons.people),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book),
                    labelText: 'Icon inside textfield',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.credit_card_rounded),
                    labelText: 'CCV',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
