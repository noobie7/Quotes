import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<String> quotes = [
    '\“The moment I used my adversity to my advantage, my career exploded.\” – Eminem',
    '\“Look, if you had one shot, or one opportunity. To seize everything you ever wanted in one moment. Would you capture it or just let it slip?\” – Eminem',
    '\“And to the rest of the world, God gave you them shoes to fit you, so put them on and wear them. Be yourself man, be proud of who you are.\” – Eminem'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          'Grind Quotes!',
          style: TextStyle(
            fontFamily: 'Cutive',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: quotes.map((quote) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: Text(
                quote,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                ),
              ) ,
          );

        }).toList(),
      )
    );
  }
}
