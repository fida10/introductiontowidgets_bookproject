import 'package:flutter/material.dart';
import 'package:introductiontowidgets_bookproject/basic_screen.dart';

void main() => runApp(const StaticApp());
//the main function of the app
//this executes the application
//we put the main widget in the app (to which all other widgets are connected, basically the base of the tree) here
//in this case, that is "StaticApp"

class StaticApp extends StatelessWidget {
  //the root widget of our project, as explained above (since it goes into main)
  //as with all widgets, it returns a widget
  const StaticApp({super.key});
  //used to get the parent (StatelessWidget) of this widget, specifically the 'key' field for this widget
  //this key is unique to each widget that calls it and kind of works like an ID card
  //we (and flutter) uses this to identify the widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //here, we are specifying that our application will use and follow "MaterialApp" specifications
      //these include built in support for various widgets, navigation, etc.
      //CupertinoApp also works here if we want to follow apple's standards instead
      title: 'Chapter Four - Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      //setting the overall theme of the app
      //this is not actually displayed directly, but other widgets in this app can use this to have a uniform theme across their layouts
      home: const BasicScreen(),
      //the home widget for this application; when the application loads, this is the first page that is displayed
    );
  }
}