import 'package:clone_whatsapp/chatdata.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:clone_whatsapp/Homepage.dart';

import 'Boxdef.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ChatdataAdapter());
  Chatbox = await Hive.openBox<Chatdata>('chatBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Cloned',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:WhatHome() ,
    );
  }
}

