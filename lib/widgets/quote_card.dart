import 'package:flutter/material.dart';
import 'package:ninja_app/classes/quote.dart';

class QuoteCard extends StatefulWidget {
  final Quote quote;
  final Function() delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(widget.quote.text,
                style: TextStyle(fontSize: 18.0, color: Colors.grey[600])),
            const SizedBox(
              height: 6.0,
            ),
            Text(widget.quote.author),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: widget.delete,
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: const Icon(Icons.delete)),
            )
          ],
        ),
      ),
    );
  }
}
