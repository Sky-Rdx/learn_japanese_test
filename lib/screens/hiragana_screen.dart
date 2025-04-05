import 'package:flutter/material.dart';
import '../widgets/word_detail.dart';

class HiraganaScreen extends StatelessWidget {
  final List<Map<String, String>> words = [
    {
      'hiragana': 'あい',
      'kanji': '',
      'romaji': 'ai',
      'meaning': 'love',
      'sentence': 'あいはせかいをかえる。',
      'sentenceRomaji': 'Ai wa sekai o kaeru.',
      'sentenceMeaning': 'Love changes the world.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hiragana - JLPT 5')),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          var word = words[index];
          return ListTile(
            title: Text(word['hiragana']!),
            subtitle: Text(word['meaning']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => WordDetail(word: word),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
