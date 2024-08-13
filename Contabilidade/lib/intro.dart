/* ElevatedButton(
  onPressed: () {
    // Seu código de ação aqui
  },
  style: ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 60), // Largura definida como infinity para se ajustar à largura disponível
  ),
  child: const Text(
    'Continuar',
    style: TextStyle(fontSize: 25),
  ),
),
*/
import 'package:flutter/material.dart';
import 'congratulations.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  IntroState createState() => IntroState();
  //_Q2 createState() => _Q2();
}

class IntroState extends State<Intro> {
  Color? corVermelha;
  Color? corVerde;
  bool continuar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introdução'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'A contabilidade integral o rol das ciências:',
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVermelha),
                    ),
                    child: const Text('Exatas'),
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
                    child: const Text('Humanas'),
                  )
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
                          MaterialPageRoute(builder: (context) => _Q2()),
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
        )
      ]),
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
        title: const Text('Indtrodução'),
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
                  'O conunto de bens, direitos e obrigações, trata-se do:',
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
                        shape: MaterialStateProperty.all(const CircleBorder()),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(20)),
                        minimumSize:
                            MaterialStateProperty.all(const Size(120, 120)),
                        backgroundColor: MaterialStateProperty.all(corVermelha),
                      ),
                      child: const Text('Patrimônio'),
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
                      child: const Text(
                        'Patrimônio\nLíquido',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => _Q3()));
                        }
                      : null,
                  child: const Text(
                    'Continuar',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
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
        title: const Text('Introdução'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Entende-se por objeto da contabilidade:',
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
                    child: const Text(
                      'Controle do\nPatrimônio',
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
                    child: const Text(
                      'Patrimônio das\nentidades',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => _Q4()));
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
        title: const Text('Introdução'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Entende-se por objetivo da contabilidade:',
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVermelha),
                    ),
                    child: const Text(
                      'Cotrole do\n patrimônio',
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVerde),
                    ),
                    child: const Text(
                      'Patrimônio das\nentidades',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => _Q5()));
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
        title: const Text('Introdução'),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Entende-se por finalidade da contabilidade:',
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
                    child: const Text(
                      'Fornecer\ninformações a\nseus usuários',
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
                    child: const Text(
                      'Patrimônio das\nentidades',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => _Q6()));
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
        title: const Text('Introdução'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Para algumas bancas, a finalidade da contabilidade também pode ser:',
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVermelha),
                    ),
                    child: const Text(
                      'Cotrole do\n patrimônio',
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVerde),
                    ),
                    child: const Text(
                      'Patrimônio das\nentidades',
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => _Q7()));
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
        title: const Text('Introdução'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Entende-se por objeto da contailidade:',
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
                    child: const Text('Patrimônio'),
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
                    child: const Text(
                      'Patrimônio\nlíquido',
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
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(120, 120)),
                      backgroundColor: MaterialStateProperty.all(corVermelha),
                    ),
                    child: const Text(
                      'Patrimônio das\nentidades',
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
                    child: const Text(
                      'Técnicas\ncontábeis',
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
