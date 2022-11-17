import 'package:flutter/material.dart';
import 'package:musicplayer_lyrics/Services/Repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => Repository().fetchdata(),
                icon: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
