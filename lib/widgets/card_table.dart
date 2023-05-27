import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              icon: Icons.border_all, text: 'General', color: Colors.amber),
          _SingleCard(
              icon: Icons.flight_outlined,
              text: 'Tickets',
              color: Colors.amber),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.android, text: 'Android', color: Colors.amber),
          _SingleCard(icon: Icons.cabin, text: 'Hotel', color: Colors.amber),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.pedal_bike, text: 'Ciclismo', color: Colors.blue),
          _SingleCard(
              icon: Icons.local_pizza, text: 'Pizza', color: Colors.red),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.shopping_cart, text: 'Shopping', color: Colors.blue),
          _SingleCard(icon: Icons.bus_alert, text: 'Bus', color: Colors.red),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: const BoxDecoration(color: Color.fromRGBO(62, 66, 107, 0.7)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            child: Icon(icon),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: color, fontSize: 20),
          )
        ],
      ),
    );
  }
}
