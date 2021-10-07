import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:extended_image/extended_image.dart';
// import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageExamle(),
    );
  }
}

class ImageExamle extends StatelessWidget {
  const ImageExamle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Material(
          child: ListTile(title: Text("Image from asset: ")),
        ),
        Card(
          child: Image.asset('lib/assets/download.png'),
        ),
      ],
    );
  }
}
