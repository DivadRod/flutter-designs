import 'package:flutter/material.dart';

class BaseDesignScreen extends StatelessWidget {
  const BaseDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/god_luffy.png')),
          Title(),
          ButtonSection(),
          TextDescription()
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtom(icon: Icons.favorite, text: 'Favorite'),
          CustomButtom(icon: Icons.apple, text: 'Hito Hito'),
          CustomButtom(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButtom({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon, color: Colors.blue), Text(text)],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });
  int get numStar => 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            children: [
              Text('Gears 5',
                  style: TextStyle(
                    fontFamily: AutofillHints.name,
                    fontSize: 30,
                  )),
              Text(
                'Monke D. Luffy',
              ),
            ],
          ),
          const SizedBox(width: 20),
          Row(
            children: List.generate(numStar, (index) {
              return const Icon(Icons.star, color: Colors.red);
            }),
          ),
          const SizedBox(width: 10),
          const Text('112'),
        ],
      ),
    );
  }
}

class TextDescription extends StatelessWidget {
  const TextDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Text(
            'El gear 5 (ギア5 Gia fifusu?, lit. «Quinta marcha») es una técnica creada como resultado del despertar de la fruta Gomu Gomu de Luffy.[1] Se vio por primera vez después de que Luffy fuera derrotado por Kaidou en la azotea de Onigashima. El despertar de la fruta Gomu Gomu, cuyo nombre real es fruta Hito Hito: modelo Nika, otorga al cuerpo de goma del consumidor una mayor fuerza y libertad, limitada únicamente por la imaginación del consumidor.'));
  }
}
