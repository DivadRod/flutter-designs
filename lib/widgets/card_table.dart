import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(),
          _SingleCard(),
        ]),
        TableRow(children: [
          _SingleCard(),
          _SingleCard(),
        ]),
        TableRow(children: [
          _SingleCard(),
          _SingleCard(),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: const BoxDecoration(color: Color.fromRGBO(62, 66, 107, 0.7)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            child: Icon(Icons.pie_chart, size: 35),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'General',
            style: TextStyle(color: Colors.amber, fontSize: 20),
          )
        ],
      ),
    );
  }
}
