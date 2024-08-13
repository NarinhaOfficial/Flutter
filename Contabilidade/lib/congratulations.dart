import 'package:flutter/material.dart';
import 'conteudo.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({super.key});

  @override
  CongraState createState() => CongraState();
}

class CongraState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://img.freepik.com/vetores-gratis/trofeu_78370-345.jpg',
                width: 200,
                height: 200,
              ),
              const Text('Parabéns! Já pode avançar para o próximo nível...'),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Conteudo(),
                    ),
                  ).then((_) {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  });
                },
                child: const Text(
                  'Confirmar',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
