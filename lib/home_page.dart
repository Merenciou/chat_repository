import 'package:flutter/material.dart';
import './chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Seja Bem Vindo ao Chat'),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Expanded(
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ChatPage()))
                          },
                      child: const Text('Entrar')),
                ))
          ],
        ),
      ),
    );
  }
}
