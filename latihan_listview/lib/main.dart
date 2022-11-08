import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});
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
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  
  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for(int i=1; i<=10; i++)...[
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: i%2 !=0? Colors.red:Colors.blue,
              ),
              child: Center(
                child: Text ('$i',
                style: TextStyle(
                  fontSize: 40,
                ),
                ),
              )
            ),
          ]
          
        ],
      )
     /* body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 500,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Center(
              child: Text('Aldo Fernando',
              style: TextStyle(
                fontSize: 20,
              ),
              ),
            ),
          ),
           Container(
            width: 500,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Center(
              child: Text('011200047',
              style: TextStyle(
                fontSize: 20,
              ),
              ),
            ),
          ),
          
           Container(
            width: 500,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.green
            ),
            child: Center(
              child: Text('PPB',
              style: TextStyle(
                fontSize: 20,
              ),
              ),
            ),
          ),
           Container(
            width: 500,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
            child: Center(
              child: Text('Informatika',
              style: TextStyle(
                fontSize: 20,
              ),
              ),
            ),
          ),
        ],
      )*/
    );
  }
}