import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final BuildContext context;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(msg: 'Esse endereço de e-mail já existe!');
      } else {
        Fluttertoast.showToast(msg: 'Preencha todos os campos!');
      }
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(String email, String senha) async {
    try {
      UserCredential credential =
          await _auth.signInWithEmailAndPassword(email: email, password: senha);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: 'Erro: Usuário não cadastrado!');
      } else if (e.code == 'email-already-in-use' &&
          e.code == 'wrong-password') {
        Fluttertoast.showToast(msg: 'Erro: Senha incorreta!');
      } else if (e.code == 'invalid-email') {
        Fluttertoast.showToast(msg: 'Erro: Endereço de e-mail inválido!');
      }
    }
    return null;
  }
}
