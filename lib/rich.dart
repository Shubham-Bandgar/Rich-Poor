import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rich extends StatefulWidget {
  const rich({Key? key}) : super(key: key);

  @override
  State<rich> createState() => _richState();
}

class _richState extends State<rich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich "),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.red,
        shadowColor: Colors.black,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.yellow,
                width: 30,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(image: AssetImage("assets/images/download.jpeg"),
                ),
          ),

        ],
      ),
    );
  }
}
