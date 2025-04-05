import 'package:flutter/material.dart';

class WordDetail extends StatelessWidget {
  final Map<String, String> word;

  WordDetail({required this.word});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(word['hiragana']!)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kanji: ${word['kanji'] ?? ""}', style: TextStyle(fontSize: 18)),
            Text('Romaji: ${word['romaji']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Meaning: ${word['meaning']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text('Example: ${word['sentence']}', style: TextStyle(fontSize: 18)),
            Text('Romaji: ${word['sentenceRomaji']}', style: TextStyle(fontSize: 18)),
            Text('English: ${word['sentenceMeaning']}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
