import "package:flutter/material.dart";
import 'congratulations.dart';

class Ativo extends StatefulWidget {
  const Ativo({super.key});

  @override
  AtivoState createState() => AtivoState();
}

class AtivoState extends State<Ativo> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ativo'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Alterado para MainAxisAlignment.start
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'O ativo pode ser circulante e não circulante',
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
                              builder: (context) => _Q2(),
                            ),
                          );
                        }
                      : null,
                  child: const Text(
                    'Continuar',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
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
        title: const Text('Ativo'),
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
                  'O Ativo circulante é composto por: Disponibilidades, direitos realizáveis no curso do exercício social subsequente e pelas aplicações de recursos em despesas do exercício seguinte',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
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
                                  builder: (context) => _Q3(),
                                ));
                          }
                        : null,
                    child: const Text('Continuar'))
              ],
            ),
          ),
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
        title: const Text('Ativo'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Qual ativo circulante possui despesas cujo fato gerador só ocorrerá no exercício seguinte, mas que já estão devidamente pagas?',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
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
                            backgroundColor:
                                MaterialStateProperty.all(corVermelha)),
                        child: const Text('Disponibilidades')),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            corVermelha = Colors.red;
                            continuar = true;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(corVermelha)),
                        child: const Text(
                          'Direitos realizáveis no curso do exercício social subsequente',
                          textAlign: TextAlign.center,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          corVerde = Colors.green;
                          continuar = true;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(corVerde),
                      ),
                      child: const Text(
                        'Aplicações de recursos em despesas do exercício seguinte',
                        textAlign: TextAlign.center,
                      ),
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
                    child: const Text('Continuar')),
              ],
            ))
      ]),
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
        title: const Text('Ativo'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Qual ativo circulante é usado para designar dinheiro em caixa e em bancos, bem como valores equivalentes?',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
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
                        backgroundColor: MaterialStateProperty.all(corVerde),
                      ),
                      child: const Text('Disponibilidades'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            corVermelha = Colors.red;
                            continuar = true;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(corVermelha)),
                        child: const Text(
                          'Direitos realizáveis no curso do exercício social subsequente',
                          textAlign: TextAlign.center,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            corVermelha = Colors.red;
                            continuar = true;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(corVermelha)),
                        child: const Text(
                          'Aplicações de recursos em despesas do exercício seguinte',
                          textAlign: TextAlign.center,
                        )),
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
                    child: const Text('Continuar')),
              ],
            ))
      ]),
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
        title: const Text('Ativo'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Qual ativo circulante possui contas que representam direitos de curto prazo, bem como bens que serão realizáveis no exercício seguinte?',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
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
                            backgroundColor:
                                MaterialStateProperty.all(corVermelha)),
                        child: const Text('Disponibilidades')),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          corVerde = Colors.green;
                          continuar = true;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(corVerde)),
                      child: const Text(
                        'Direitos realizáveis no curso do exercício social subsequente',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            corVermelha = Colors.red;
                            continuar = true;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(corVermelha)),
                        child: const Text(
                          'Aplicações de recursos em despesas do exercício seguinte',
                          textAlign: TextAlign.center,
                        )),
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
                                  builder: (context) => _Q6(),
                                ));
                          }
                        : null,
                    child: const Text('Continuar')),
              ],
            ))
      ]),
    );
  }
}

class _Q6 extends StatefulWidget {
  @override
  _Q6State createState() => _Q6State();
}

class _Q6State extends State<_Q6> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ativo'),
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
                  'O Ativo não circulante é composto por: Ativo realizado a longo prazo, investimentos, imobilizado e intangível',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.justify,
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
                      child: const Text('Patrimônio'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: continuar
                        ? () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _Q7(),
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

class _Q7 extends StatefulWidget {
  @override
  _Q7State createState() => _Q7State();
}

class _Q7State extends State<_Q7> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ativo'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Qual ativo não circulante destina bens incorpórios à manutenção das atividades da companhia ou da empresa?',
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
                    child: const Text(
                      'Realizáveis à\nlongo prazo',
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVermelha),
                    ),
                    child: const Text('Investimentos'),
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVermelha),
                    ),
                    child: const Text('Imobilizado'),
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
                    child: const Text('Intangível'),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              ElevatedButton(
                onPressed: continuar
                    ? () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => _Q8()));
                      }
                    : null,
                child: const Text(
                  'Continuar',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

class _Q8 extends StatefulWidget {
  @override
  _Q8State createState() => _Q8State();
}

class _Q8State extends State<_Q8> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ativo'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Qual ativo não circulante destina bens corpórios à manutenção das atividades da companhia ou da empresa?',
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
                      'Realizáveis à\nlongo prazo',
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVermelha),
                    ),
                    child: const Text('Investimentos'),
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
                    child: const Text('Imobilizado'),
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
                    child: const Text('Intangível'),
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
                                builder: (context) => const Congratulations()));
                      }
                    : null,
                child: const Text(
                  'Continuar',
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
