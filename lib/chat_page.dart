import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  bool showMessage = false;
  List<String> message = [];
  TextEditingController fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: o scaffold deve ter uma app bar para poder navegar de volta para a home
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            //TODO: não usar valores fixos quando for construir a tela, pois esses valores vão restringir a tela
            //TODO: usar sempre o MediaQuery ou o expanded, estudar sobre responsividade no flutter.
            //TODO: assistir esse video: https://www.youtube.com/watch?v=S676OGGF-w0
            width: 350,
            height: 650,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //TODO: usar o expanded para que o listview não fique com tamanho fixo e assim possa ocorrer o scroll
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: message.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        //TODO: quase nunca se usa o fromLTRB, usa sempre o symmetric ou all com valores fixos
                        margin: const EdgeInsets.fromLTRB(140, 0, 0, 24),
                        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                        width: 200,
                        height: 30,
                        child: Center(child: Text(message[index])),
                      ),
                    );
                  },
                ),
                TextField(
                  controller: fieldText,
                  decoration: InputDecoration(
                      hintText: 'Mensagem',
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(
                          onPressed: () => {
                                message,
                                setState(() {
                                  showMessage = true;
                                  message.add(fieldText.text);
                                }),
                                clearText()
                              },
                          icon: const Icon(Icons.send)),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
