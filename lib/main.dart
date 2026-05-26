import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main () => runApp(MaterialApp(
  home: quoteList(),

    
));

class quoteList extends StatefulWidget {
  const quoteList({super.key});

  @override
  State<quoteList> createState() => _quoteListState();
}

class _quoteListState extends State<quoteList> {

  List<Quote> quotes = [
    Quote(author:"Oscar Wild", text:"Be yourself, everyone else is already taken",
    category: "Inspirational", createdAt: DateTime(1967, 1, 1)),
    Quote(author:"Oscar Wild", text:"I have nothing to declare except my genius",
    category: "biographical", createdAt: DateTime(1910, 2, 3)),
    Quote(author:"Oscar Wild", text:"The truth is rarely pure and never simple",
    category: "reflective", createdAt: DateTime(1896, 1, 30)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      )
    );
  }
}


