import 'package:casino/slot_machine.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue[700],
          shape: const CircleBorder()
        )
      ),
      home: const SlotMachine(
        title: 'Casino',
        
        ),
    );
  }
}


