import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  runApp(MyApp());
}

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Testing Demo"),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController controller = TextEditingController();

  String dspText = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey)),
              labelText: "Enter Text"
            ),
          ),
          SizedBox(height: 10),
          Text(dspText, style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          RaisedButton(
            color: Colors.blueAccent,
            child: Text("Count"),
            onPressed: (){
              int count = getCharCount(controller.text.toString());
              setState(() {
                dspText = "$count";
              });
            },
          ),
        ],
      ),
    );
  }
}

int getCharCount(String initial){
  return initial.length;
}

