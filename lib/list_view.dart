import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatelessWidget {
  
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
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0), 
                    child: Card(
                      margin: EdgeInsets.all(0), 
                      child: ListTile(
                        contentPadding: EdgeInsets.all(15), 
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0), 
                          child: Image.asset(
                            items[index]['image']!, 
                            width: 80, 
                            height: 80, 
                          
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 8.0), 
                          child: Text(
                            items[index]['text']!, 
                            style: TextStyle(
                              color: Colors.black, 
                            ),
                          ),
                        ),
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
