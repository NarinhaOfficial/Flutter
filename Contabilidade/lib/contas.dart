import 'package:flutter/material.dart';
import 'congratulations.dart';

class Contas extends StatefulWidget {
  const Contas({super.key});

  @override
  ContasState createState() => ContasState();
}

class ContasState extends State<Contas> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contas'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'A conta é o meio pelo qual o patrimônio é controlado',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        corVerde = Colors.green;
                        continuar = true;
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVerde),
                    ),
                    child: const Text('Certo'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        corVermelha = Colors.red;
                        continuar = true;
                      });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVermelha),
                    ),
                    child: const Text('Errado'),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                  onPressed: continuar
                      ? () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => _Q2(),
                              ));
                        }
                      : null,
                  child: const Text('Continuar'))
            ]),
          )
        ],
      ),
    );
  }
}

class _Q2 extends StatefulWidget {
  @override
  _Q2State createState() => _Q2State();
}

class _Q2State extends State<_Q2> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contas'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'O objetivo da conta é registrar apenas as contas patrimoniais (bens, direitos, obrigações e patrimônio líquido)',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          corVermelha = Colors.red;
                          continuar = true;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(const CircleBorder()),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(20)),
                        minimumSize:
                            MaterialStateProperty.all(const Size(120, 120)),
                        backgroundColor: MaterialStateProperty.all(corVermelha),
                      ),
                      child: const Text('Certo'),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          corVerde = Colors.green;
                          continuar = true;
                        });
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(const CircleBorder()),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(20)),
                        minimumSize:
                            MaterialStateProperty.all(const Size(120, 120)),
                        backgroundColor: MaterialStateProperty.all(corVerde),
                      ),
                      child: const Text('Errado'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                ElevatedButton(
                    onPressed: continuar
                        ? () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Congratulations(),
                                ));
                          }
                        : null,
                    child: const Text('Continuar'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
