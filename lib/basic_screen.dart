import 'package:flutter/material.dart';
//import 'package:introductiontowidgets_bookproject/immutable_widget.dart'; //needed for v1 of the scaffold
import 'package:introductiontowidgets_bookproject/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
       v1 of scaffold below, with dynamic image

      //the scaffold widget allows us to format our application better.
      //It lets us center things, like we are below, and of course it can have children embedded within
      //Also recommended to use this at the start of every screen, for structure, even if we do not use the fields within Scaffold
      //Scaffolds form an easy, uniform basis for any screen

      appBar: AppBar(
        //this is a common widget called appBar; it lets us insert a nav bar (persistent, doesn't move) at the top of the page
        backgroundColor: Colors.indigo,
        title: const Text('Flutter sample appbar title'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            //looks like this surronds the icon below with a 10 pixel box
            child: Icon(Icons.edit),
          )
        ],
      ),

      body: Column(
        children: [
          const AspectRatio(
            aspectRatio: 1.0,
            child: ImmutableWidget(),
          ),
          const TextLayout(),
          const Divider(),
          RichText(
            text: const TextSpan(
              text: 'Flutter text is ',
              style: TextStyle(fontSize: 22, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'really ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  children: [
                    TextSpan(
                      text: 'powerful.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                        fontSize: 40
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      drawer: Drawer(
          child: Container(
              color: Colors.lightBlue,
              child: const Center(
                child: Text("This is a drawer!"),
              ))),
      //This is a drawer; basically the hamburger menu we see in a lot of nav bars
      //adding it also adds a hamburger menu to the nav bar that we created
      //we can define the elements that should be seen in the hamburgur menu here, inside the drawer widget

      // v1 of scaffold ends

      */

      // v2 of scaffold, with image

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Semantics(
            image: true,
            label: 'A generated dart logo',
            child: Image.asset('assets/dart.jpg'),
          ),
          const TextLayout(),
        ],
      ),
    );
  }
}
