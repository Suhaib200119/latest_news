import 'package:flutter/material.dart';
import 'package:latest_news/MyAppBar.dart';

import 'Card_News.dart';
import 'Data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: Column(
        children: [
          Container(child: MyAppBaar()),
          Container(
            height: 668,
            child: ListView.builder(
                itemCount: NewsList.length,
                itemBuilder: (_, index) {
                  return CardNews(
                      NewsList[index].imageName,
                      NewsList[index].titleNews,
                      NewsList[index].dateNews,
                      NewsList[index].numberOfComments);
                }),
          ),
        ],
      )),
    ));
  }
}
