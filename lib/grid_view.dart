import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewPage(),
    );
  }
}

class GridViewPage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/phas.jpg',
      'text': 'Phasmophobia',
    },
    {
      'image': 'assets/pubg.jpg',
      'text': 'Pubg',
    },
    {
      'image': 'assets/among us.jpeg',
      'text': 'Among Us',
    },
    {
      'image': 'assets/COD warzone.jpg',
      'text': 'Warzone',
    },
    {
      'image': 'assets/fall guys.jpeg',
      'text': 'Fall Guys',
    },
    {
      'image': 'assets/sea of thieves.jpeg',
      'text': 'Sea of Thieves',
    },
    {
      'image': 'assets/uncharted 4.jpg',
      'text': 'Uncharted 4',
    },
    {
      'image': 'assets/spidey.jpg',
      'text': 'Spiderman',
    },
  ];

  GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Text(
                "Games List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.75,  // Adjusted for better image size
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(0),
                    child: GridTile(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              items[index]['image']!,
                              width: 100, // Increased image size
                              height: 100, // Increased image size
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              items[index]['text']!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
