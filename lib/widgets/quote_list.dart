import 'package:flutter/material.dart';
import 'package:ninja_app/classes/quote.dart';
import 'package:ninja_app/widgets/quote_card.dart';

class QuoteList extends StatefulWidget {
  final List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];
  QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Quote List')),
        body: Column(
            children: widget.quotes
                .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        widget.quotes.remove(quote);
                      });
                    }))
                .toList()));
  }
}
