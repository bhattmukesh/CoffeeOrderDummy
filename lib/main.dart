import 'package:flutter/material.dart';
import 'package:number_trivia_dummy/home.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class SandboxWidget extends StatelessWidget {
  const SandboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sandbox"), backgroundColor: Colors.grey),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(height: 100, color: Colors.green, child: Text('One')),
          Container(height: 200, color: Colors.red, child: Text('Two')),
          Container(height: 300, color: Colors.blue, child: Text('Three')),
        ],
      ),
    );
  }
}
