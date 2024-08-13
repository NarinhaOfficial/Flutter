import 'package:flutter/material.dart';
import 'login.dart';
import 'cadastre.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NC',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Bem-vindo ao Noções de Contabilidade - NC',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaDeLogin(),
                    ),
                  );
                },
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(60, 55)),
                child: const Text(
                  'FAZER LOGIN',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'OU',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Cadastre(),
                      ));
                },
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(60, 55)),
                child: const Text(
                  'CADASTRE-SE',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
