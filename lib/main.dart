import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      title: 'Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "assets/meme0.jpg",
    "assets/meme1.jpg",
    "assets/meme2.jpg",
  ];
  int currentImage = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCD6),
      body: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // This spreads the children
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Ahmed',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(16, 79, 95, 1),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 32.0, left: 16.0),
              child: Text(
                "Hey, There I'm Ahmed",
                style: TextStyle(
                  fontSize: 64,
                  // rgb(12, 45, 53)
                  color: Color.fromRGBO(12, 45, 53, 1.0),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text(
                "I love programming and figuring out how things works, I also love music !",
                style: TextStyle(
                  fontSize: 20,
                  // rgb(12, 45, 53)
                  color: Color.fromRGBO(12, 45, 53, 1.0),
                ),
              ),
            ),
          ),
          Spacer(),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentImage = (currentImage + 1) % images.length;
                });
              },
              child: Image.asset(
                images[currentImage],
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
