import 'package:flutter/material.dart';
import 'congratulations.dart';

class Natureza extends StatefulWidget {
  const Natureza({super.key});

  @override
  NaturezaState createState() => NaturezaState();
}

class NaturezaState extends State<Natureza> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natureza das Contas'),
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
                'A natureza das contas podem ser: credoras e devedoras',
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
        title: const Text('Natureza das Contas'),
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
                  'As contas do ativo são de natureza credora',
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
                                  builder: (context) => _Q3(),
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

class _Q3 extends StatefulWidget {
  @override
  _Q3State createState() => _Q3State();
}

class _Q3State extends State<_Q3> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natureza das Contas'),
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
                  'As contas do ativo são de natureza devedora',
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
                                  builder: (context) => _Q4(),
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

class _Q4 extends StatefulWidget {
  @override
  _Q4State createState() => _Q4State();
}

class _Q4State extends State<_Q4> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natureza das Contas'),
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
                  'As contas do passivo são de natureza credora',
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
                                  builder: (context) => _Q5(),
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

class _Q5 extends StatefulWidget {
  @override
  _Q5State createState() => _Q5State();
}

class _Q5State extends State<_Q5> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natureza das Contas'),
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
                  'As contas de receita assim como as contas do ativo são de natureza devedora',
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
