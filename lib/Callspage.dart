import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _GroupsState();
}

class _GroupsState extends State<Calls> {
  File? img;
  pickImg ()async {
    var temp = await ImagePicker().pickImage(source: ImageSource.gallery);
    img =File(temp!.path);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    children: [Image(image: FileImage(img!))],

    );
  }
}