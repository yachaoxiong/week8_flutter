import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quotes App')),
        body: QuotesApp(),
      ),
    );
  }
}

class QuotesApp extends StatefulWidget {
  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  List<String> quotes = [
    'Be yourself; everyone else is already taken.',
    'Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.',
    'So many books, so little time.',
    'You only live once, but if you do it right, once is enough.',
    'Be the change that you wish to see in the world.',
  ];

  String currentQuote = '';

  void _generateQuote() {
    final random = Random();
    setState(() {
      currentQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuote,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: _generateQuote,
            icon: Icon(Icons.refresh),
            label: Text('Generate Quote'),
          ),
        ],
      ),
    );
  }
}
