import 'package:flutter/material.dart';
import 'intro.dart';
import 'ativo.dart';
import 'passivo.dart';
import 'pl.dart';
import 'bp.dart';
import 'perfil.dart';
import 'contas.dart';
import 'natureza.dart';

class Conteudo extends StatefulWidget {
  const Conteudo({super.key});

  @override
  ConteudoState createState() => ConteudoState();
}

class ConteudoState extends State<Conteudo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu de Aprendizagem'),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                // Botão centralizado
                // RoundedButton(
                //   text: 'Introdução',
                //   cor: Colors.blue,
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const Intro(),
                //       ),
                //     );
                //   },
                // ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Intro(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(40),
                    minimumSize: const Size(120, 120),
                  ),
                  child: const Text('Introudução'),
                ),

                // Espaçamento entre os botões
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Ativo(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(40),
                        minimumSize: const Size(120, 120),
                      ),
                      child: const Text('Ativo'),
                    ),
                    const SizedBox(width: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Passivo(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(40),
                        minimumSize: const Size(120, 120),
                      ),
                      child: const Text(
                        'Passivo\nExigível',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PatrimonioLiquido(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(40),
                    minimumSize: const Size(120, 120),
                  ),
                  child: const Text(
                    'Patrimônio\nLíquido',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Balan(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(40),
                        minimumSize: const Size(120, 120),
                      ),
                      child: const Text(
                        'Balanço\nPatrimonial',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Contas(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(40),
                        minimumSize: const Size(120, 120),
                      ),
                      child: const Text('Contas'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Natureza(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(40),
                    minimumSize: const Size(120, 120),
                  ),
                  child: const Text(
                    'Natureza das\nContas',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        SizedBox(
          height: 80,
          //color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PerfilButton(
                  text: ' ',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Perfil(),
                        ));
                  }),
              const SizedBox(
                height: 8,
              ),
              const Text('Perfil')
            ],
          ),
        ),
      ],
    );
  }
}

class PerfilButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PerfilButton({super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 40, // Ajuste o tamanho desejado
        height: 40, // Ajuste o tamanho desejado
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
