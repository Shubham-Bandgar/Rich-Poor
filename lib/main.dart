import 'package:flutter/material.dart';
import 'package:rich_poor/poor.dart';
import 'package:rich_poor/rich.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

 class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich poor"),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.redAccent,
        shadowColor: Colors.black87,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                width: 120,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(elevation: MaterialStateProperty.all<double>(10),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>rich()));
                    }, child: Text("I am Rich")),
              ),
              Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                height: 50,
                width: 120,
                child: ElevatedButton(
                    style: ButtonStyle(elevation: MaterialStateProperty.all<double>(10),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>poor()));
                    }, child: Text("I am Poor")),
              )
            ],
          ),

        ),
      ),

    );
  }
}
