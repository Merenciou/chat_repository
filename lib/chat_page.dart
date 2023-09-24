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
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            width: 350,
            height: 650,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: message.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(140, 0, 0, 24),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
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
