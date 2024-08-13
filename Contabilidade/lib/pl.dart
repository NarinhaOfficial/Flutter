import 'package:flutter/material.dart';
import 'congratulations.dart';

class PatrimonioLiquido extends StatefulWidget {
  const PatrimonioLiquido({super.key});

  @override
  PatrimonioState createState() => PatrimonioState();
}

class PatrimonioState extends State<PatrimonioLiquido> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patrimônio Líquido'),
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
                  'Assim como o ativo e o passivo, o Patrimônio Líquido também divide-se em Patrimônio Líquido circulante e não circulante',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                ]),
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
              ],
            ),
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
          title: const Text('Patrimônio Líquido'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Qual item não faz parte do Patrimônio Líquido?',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 50,
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
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(120, 120)),
                          backgroundColor:
                              MaterialStateProperty.all(corVermelha),
                        ),
                        child: const Text(
                          'Capital\nSocial',
                          textAlign: TextAlign.center,
                        ),
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
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(120, 120)),
                          backgroundColor: MaterialStateProperty.all(corVerde),
                        ),
                        child: const Text('Disponibilidades'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(120, 120)),
                          backgroundColor:
                              MaterialStateProperty.all(corVermelha),
                        ),
                        child: const Text(
                          'Reservas de\ncapital',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            corVermelha = Colors.red;
                            continuar = true;
                          });
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(120, 120)),
                          backgroundColor:
                              MaterialStateProperty.all(corVermelha),
                        ),
                        child: const Text(
                          'Ajustes de\nAvalização\nPatrimonial',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(120, 120)),
                          backgroundColor:
                              MaterialStateProperty.all(corVermelha),
                        ),
                        child: const Text(
                          'Reservas\nde lucros',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            corVermelha = Colors.red;
                            continuar = true;
                          });
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          minimumSize:
                              MaterialStateProperty.all(const Size(120, 120)),
                          backgroundColor:
                              MaterialStateProperty.all(corVermelha),
                        ),
                        child: const Text('Ações em\ntesouraria'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
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
                    child: const Text(
                      'Prejuízos\nacumulados',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: continuar
                          ? () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Congratulations(),
                                  ));
                            }
                          : null,
                      child: const Text('Continuar'))
                ],
              ),
            )
          ],
        ));
  }
}
