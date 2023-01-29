import 'package:flutter/material.dart';
import 'package:ninja_app/widgets/quote_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return QuoteList();
  }
}