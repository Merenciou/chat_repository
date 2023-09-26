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
                            //TODO: Raramente se usa esse tipo de navegação. Trabalha-se com Named Routes
                            //TODO: ver video https://www.youtube.com/watch?v=9olJ-lTSM8E
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChatPage()))
                          },
                      child: const Text('Entrar')),
                ))
          ],
        ),
      ),
    );
  }
}
