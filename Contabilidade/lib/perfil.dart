import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});
  @override
  PerfilState createState() => PerfilState();
}

class PerfilState extends State<Perfil> {
  late TextEditingController _email;
  late TextEditingController _senha;
  late ImagePicker _imagePicker;
  XFile? _pickedFile;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _senha = TextEditingController();
    _imagePicker = ImagePicker();
    _pickedFile = null;
  }

  void _selecionarImagem() async {
    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedFile = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: _selecionarImagem,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _pickedFile != null
                        ? FileImage(File(_pickedFile!.path))
                        : null,
                  ),
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nome'),
                    Text('Sobrenome'),
                    Text('Data de Nascimento'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'USUÁRIO',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _email,
              decoration: const InputDecoration(
                hintText: 'Digite seu usuário',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'SENHA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _senha,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Digite sua senha',
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: 'Botão "Alterar" pressionado!');
                  },
                  child: const Text('Alterar'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
                  },
                  child: const Text('Fechar Aplicativo'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
