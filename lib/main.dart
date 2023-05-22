import 'package:flutter/material.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(child: Text('Hello World!')),
    );
  }
}
