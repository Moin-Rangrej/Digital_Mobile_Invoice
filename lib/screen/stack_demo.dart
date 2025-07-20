import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  const StackDemo({super.key});

  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Example")),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 400,
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                  alignment: Alignment.bottomRight,
                  child: Text("One"),
                ),
              ),
              Positioned(
                top: 50,
                child: Container(
                  height: 250,
                  width: 250,
                  color: Colors.blue,
                  alignment: Alignment.bottomRight,
                  child: Text("Two"),
                ),
              ),
              Positioned(
                left: 60,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text("Three"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
