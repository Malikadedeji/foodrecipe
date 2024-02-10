import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Food Recipe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
      home: const MyHomePage(title: 'Food Recipe')
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key, 
    required this.title,
    });

    final String title; 

  @override
  Widget build(BuildContext context) {
      return Scaffold (
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          ), 
          
          actions: const[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: [
                TitleSection(heading: 'How to make french toast',),
                
              ],
            ),
          ),
        ),
      );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.heading,
    });

    final String heading;

  @override
  Widget build(BuildContext context) {
    return 
      Row( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 250.0,
            
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                    heading,
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontFamily: '/fonts/Poppins-ExtraBold.ttf', 
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      height: 1.2,
                      ),
                      
                    ),
            ),
          ),
        ],
      );
  }
}

