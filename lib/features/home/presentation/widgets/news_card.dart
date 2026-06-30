import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String source;
  final String date;

  const NewsCard({
    super.key,
    required this.title,
    required this.source,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            color: Colors.grey.shade300,
            child: const Center(
              child: Icon(
                Icons.image,
                size: 60,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(source),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(date),
          ),
        ],
      ),
    );
  }
}