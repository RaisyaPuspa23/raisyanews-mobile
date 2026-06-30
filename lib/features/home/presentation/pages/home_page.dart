import 'package:flutter/material.dart';

import '../widgets/news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RaisyaNews'),
      ),
      body: ListView(
        children: const [
          SizedBox(height: 16),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari berita...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          SizedBox(height: 16),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Kategori',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 8),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 8,
              children: [
                Chip(label: Text('All')),
                Chip(label: Text('Technology')),
                Chip(label: Text('Sports')),
                Chip(label: Text('Health')),
              ],
            ),
          ),

          SizedBox(height: 16),

          NewsCard(
            title: 'Judul Berita Pertama',
            source: 'RaisyaNews',
            date: '1 Juli 2026',
          ),

          NewsCard(
            title: 'Judul Berita Kedua',
            source: 'RaisyaNews',
            date: '1 Juli 2026',
          ),
        ],
      ),
    );
  }
}