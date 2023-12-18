import 'package:flutter/material.dart';
import 'package:lab4_135/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,background: Color.fromARGB(255, 235, 229, 247)),
        useMaterial3: true,
      ),
      home: const FirstPages(), //ระบุหน้าที่จะเอามาแสดง
    );
  }
}

