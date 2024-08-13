import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'conteudo.dart';
import 'autenticacao.dart';

class TelaDeLogin extends StatefulWidget {
  const TelaDeLogin({super.key});

  @override
  TelaDeLoginState createState() => TelaDeLoginState();
}

class TelaDeLoginState extends State<TelaDeLogin> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _senha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('E-MAIL:'),
              TextField(
                controller: _email,
                decoration:
                    const InputDecoration(labelText: 'Insira seu e-mail aqui'),
              ),
              const SizedBox(height: 16),
              const Text('SENHA:'),
              TextField(
                controller: _senha,
                obscureText: true, //oculta o texto digitado
                decoration:
                    const InputDecoration(labelText: 'Insira sua senha aqui'),
              ),
              const SizedBox(height: 40),
              Center(
                  child: Column(children: [
                ElevatedButton(
                  onPressed: () {
                    _login(_email.text, _senha.text, context);
                  },
                  child: const Text('ENTRAR'),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'ESQUECI A SENHA',
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 16),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          _esqueciAsenha(context, _email.text);
                        },
                    ),
                  ]),
                ),
              ])),
            ],
          ),
        ),
      ),
    );
  }
}

void _login(
  String email,
  String senha,
  BuildContext context,
) async {
  FirebaseAuthService auth = FirebaseAuthService();
  auth.signInWithEmailAndPassword(email, senha).then((User? user) {
    if (email.isEmpty || senha.isEmpty) {
      Fluttertoast.showToast(msg: 'Erro. Preencha todos os campos!');
    } else if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Conteudo()),
      );
    }
  });
}

bool isEmailValid(String email) {
  final emailRegex = RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
  return emailRegex.hasMatch(email);
}

void _esqueciAsenha(BuildContext context, String email) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    Fluttertoast.showToast(
        msg: 'Um e-mail de redefinição foi enviado para $email');
  } catch (e) {
    Fluttertoast.showToast(
        msg: 'Erro ao enviar e-mail de redefinição de senha: $email');
  }
}
