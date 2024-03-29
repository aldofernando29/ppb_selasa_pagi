import 'package:flutter/material.dart';
import 'pages/myactionbutton.dart';
import 'pages/mybottombar.dart';
import 'pages/foodlistview.dart';
import 'pages/selecttypeaction.dart';
import 'pages/menuitemlist.dart';
import 'pages/myappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: ProjectPage(),
    );
  }
}

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyAppBar(),
      body: Container(
      child: ListView(
        children: [
          SizedBox(height: 16.0,),
          MyAppBar(),
          SizedBox(height: 16.0,),
          foodlistview(),
          SizedBox(height: 16.0,),
          SelectTypeSection(),
          SizedBox(height: 16.0,),
          MenuItemsList(),
        ],
      ),
     ),
    );
  }
}