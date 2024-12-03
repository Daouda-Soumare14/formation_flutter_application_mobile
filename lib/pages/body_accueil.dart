import 'package:flutter/material.dart';

class BodyAccueil extends StatelessWidget {
  BodyAccueil({super.key});

  final List<Map<String, String>> items = [
    {"image": "assets/images/image1.jpg", "title": "Image 1"},
    {"image": "assets/images/image4.jpg", "title": "Image 4"},
    {"image": "assets/images/image10.jpg", "title": "Image 10"},
    {"image": "assets/images/image8.jpg", "title": "Image 8"},
    {"image": "assets/images/image9.png", "title": "Image 9"},
    {"image": "assets/images/image7.jpeg", "title": "Image 7"},
    {"image": "assets/images/image7.jpeg", "title": "Image 7"},
    {"image": "assets/images/image7.jpeg", "title": "Image 7"},
    {"image": "assets/images/image7.jpeg", "title": "Image 7"},
    {"image": "assets/images/image7.jpeg", "title": "Image 7"},
    {"image": "assets/images/image7.jpeg", "title": "Image 7"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                    child: Image.asset(
                      item["image"]!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item["title"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
