import 'package:flutter/material.dart';
import 'quotes.dart';



class QuoteCard extends StatelessWidget {
  final Quote quote;
  final void Function()  delete;
  QuoteCard(this.quote, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      color: Colors.greenAccent,
      child: Column(
          children: [
          Text(
          quote.text,
          style : TextStyle(
              fontSize: 20,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cutive'
          )
      ),
      SizedBox(
        height: 10,
      ),
      Text(
          quote.author,
          style : TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway'
          )
      ),
      SizedBox(
        height: 10,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                onPressed: delete,
                child: Icon(
                  Icons.delete,
                  size: 25,
                )
            )
          ]
      ),



    ],
    )
    );
  }
}
