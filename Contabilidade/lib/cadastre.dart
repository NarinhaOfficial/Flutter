import 'package:contabilidade/autenticacao.dart';
import 'package:contabilidade/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Cadastre extends StatefulWidget {
  const Cadastre({super.key});

  @override
  CadastreState createState() => CadastreState();
}

class CadastreState extends State<Cadastre> {
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _sobrenome = TextEditingController();
  final TextEditingController _nascimento = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();

  @override
  void dispose() {
    _nome.dispose();
    _sobrenome.dispose();
    _nascimento.dispose();
    _email.dispose();
    _senha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre-se'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Nome:'),
              TextField(
                controller: _nome,
                decoration:
                    const InputDecoration(labelText: 'Insira seu nome aqui'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Sobrenome:'),
              TextField(
                controller: _sobrenome,
                decoration: const InputDecoration(
                    labelText: 'Insira seu sobrenome aqui'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Data de nascimento:'),
              TextField(
                controller: _nascimento,
                decoration: const InputDecoration(
                    labelText: 'Insira sua data de nascimento aqui'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Usuário:'),
              TextField(
                controller: _email,
                decoration:
                    const InputDecoration(labelText: 'Insira seu e-mail aqui'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('Senha:'),
              TextField(
                controller: _senha,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Insira sua senha aqui'),
              ),
              const SizedBox(
                height: 70,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _cadastre(
                      _nome.text,
                      _sobrenome.text,
                      _nascimento.text,
                      _email.text,
                      _senha.text,
                      context,
                    );
                  },
                  child: const Text('CADASTRAR'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _cadastre(
  String nome,
  String sobrenome,
  String nascimento,
  String email,
  String senha,
  BuildContext context,
) {
  FirebaseAuthService auth = FirebaseAuthService();
  auth.signUpWithEmailAndPassword(email, senha).then((User? user) {
    if (user != null) {
      Fluttertoast.showToast(msg: "Usuário criado com sucesso!");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TelaDeLogin()),
      );
    } else {
      Fluttertoast.showToast(msg: "ERRO. Usuário não cadastrado!");
    }
  });
}
