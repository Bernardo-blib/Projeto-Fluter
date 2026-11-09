import 'package:flutter/material.dart';
import 'MeuApp.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaViagens(),
    );
  }
}

class TelaViagens extends StatelessWidget {
  const TelaViagens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Viagens',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1552832230-c0197dd311b5?w=900',
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Roma',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Coliseu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BotaoViagem(
                    icone: Icons.location_on_outlined,
                    texto: 'Quero Ir',
                  ),
                  BotaoViagem(
                    icone: Icons.accessibility_new,
                    texto: 'Já Fui',
                  ),
                  BotaoViagem(
                    icone: Icons.share,
                    texto: 'Compartilhar',
                  ),
                  Avaliacoes(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Fusce id diam id ligula ultricies pulvinar. In neque lectus, '
                'sagittis eu libero et, venenatis lacinia nulla. Etiam erat '
                'augue leo. Nam consectetur ornare est eu lobortis. '
                'Morbi eu augue eu lectus condimentum vestibulum. '
                'Etiam id nibh luctus, porttitor arcu et, porttitor purus. '
                'Pellentesque vulputate nibh sit amet rutrum viverra. '
                'Nullam eget metus est. Integer condimentum, odio sed '
                'congue malesuada, ipsum nisi bibendum lectus, '
                'quis porttitor ante lacus in mi. Curabitur eget '
                'imperdiet ante. Aliquam magna tortor, volutpat sit '
                'amet mi a, cursus malesuada leo. Aenean dolor erat, '
                'gravida ut ultricies sed, convallis nec ipsum.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pessoas Encontradas',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.filter_alt,
                        color: Colors.blue,
                      ),
                      Text(
                        'Filtrar',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AvatarPessoa(),
                AvatarPessoa(),
                AvatarPessoa(),
                AvatarPessoa(),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class BotaoViagem extends StatelessWidget {
  final IconData icone;
  final String texto;

  const BotaoViagem({
    super.key,
    required this.icone,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icone,
          color: Colors.blue,
          size: 20,
        ),
        Text(
          texto,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}

class Avaliacoes extends StatelessWidget {
  const Avaliacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: Colors.blue,
              size: 16,
            ),
            Icon(
              Icons.star,
              color: Colors.blue,
              size: 16,
            ),
            Icon(
              Icons.star,
              color: Colors.blue,
              size: 16,
            ),
          ],
        ),
        const Text(
          'Avaliações',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}

class AvatarPessoa extends StatelessWidget {
  const AvatarPessoa({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 23,
      backgroundColor: Color(0xFFEAEAEA),
      child: Icon(
        Icons.person,
        size: 38,
        color: Colors.grey,
      ),
    );
  }
}

