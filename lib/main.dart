import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:transparent_image/transparent_image.dart';

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
      debugShowCheckedModeBanner: false,
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
        const Material(
          child: ListTile(title: Text("Image from asset: ")),
        ),
        Card(
          child: Image.asset('assets/download.png'),
        ),
        const Divider(),
        const Material(
          child: ListTile(title: Text("Image from Url: ")),
        ),
        Card(
          child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  "https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.6435-9/244206708_171268665190544_4335027334272985582_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=82N27lKUsUgAX-o_2aj&_nc_ht=scontent.fsgn8-1.fna&oh=ea7854e99658e249a36f01bbf61f5d80&oe=6182DFF1"),
        ),
        const Divider(),
        const Material(
          child: ListTile(title: Text("Gif from asset: ")),
        ),
        Image.asset(
          "assets/giphy.gif",
        ),
        const Divider(),
        const Material(
          child: ListTile(
            title: Text("Cached network image: "),
          ),
        ),
        CachedNetworkImage(
          imageUrl: "https://picsum.photos/id/7/250/250",
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        const Divider(),
        const Material(
          child: ListTile(
            title: Text("Webp from package in assets: "),
          ),
        ),
        Image.asset(
          "assets/meo.webp",
          // package: "flutter_gallery_assets",
        ),
        const Material(
          child: ListTile(
            title: Text("ExtendedImage"),
            subtitle: Text(
                "provides more functionalities like image caching and shape and borderRadius"),
          ),
        ),
        ExtendedImage.network(
          "https://images.unsplash.com/photo-1515488764276-beab7607c1e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1895&q=80%27",
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(120)),
        )
      ],
    );
  }
}
