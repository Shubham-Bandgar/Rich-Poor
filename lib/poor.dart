import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class poor extends StatefulWidget {
  const poor({Key? key}) : super(key: key);

  @override
  State<poor> createState() => _poorState();
}

class _poorState extends State<poor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        
        centerTitle: true,
        title: Text("Ak Gareeb"),
        //elevation: 5,
        backgroundColor: Colors.yellow,
        shadowColor: Colors.white,
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Image(image: AssetImage("assets/images/poor.jpeg")),
          Text("Tu Phir Se Aagaya Re ...Idhar Zeher Khane Ka Paisa Nahi Hai ...Tu Ja Reeeeeeeee",style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),),


        ],
      ),

    );
  }
}
