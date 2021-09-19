import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
	home: QuotesList(),
));

class QuotesList extends StatefulWidget {
	const QuotesList({Key? key}) : super(key: key);

	@override
	_QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
	List<Quote> quotes = [
		Quote('\"The moment I used my adversity to my advantage, my career exploded\”', 'Eminem'),
		Quote('\She said \‘where we goin?\’ I said \‘the moon.\’\”','Travis Scott'),
		Quote('\“Look, if you had one shot, or one opportunity. To seize everything you ever wanted in one moment. Would you capture it or just let it slip?\”','Eminem'),
		Quote('\“And to the rest of the world, God gave you them shoes to fit you, so put them on and wear them. Be yourself man, be proud of who you are.\”','Eminem')
	];
	@override
	Widget build(BuildContext context) {
		return Scaffold(
				backgroundColor: Colors.indigoAccent,
				appBar: AppBar(
					title: Text(
						'Grind Quotes!',
						style: TextStyle(
							fontFamily: 'Raleway',
							fontSize: 25.0,
							fontWeight: FontWeight.bold,
						),
					),
					backgroundColor: Colors.black,
				),
				body: Column(
					children: quotes.map((quote) => QuoteCard(
						 quote,
						 (){
							setState(() {
							  quotes.remove(quote);
							});
						}
					)).toList(),

				)
		);
	}
}

