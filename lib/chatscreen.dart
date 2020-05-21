import 'package:flutter/material.dart';
import 'package:material_chat_app/chatmessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _t1 = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _t1.clear();
    if (text != "") {
      ChatMessage message = new ChatMessage(
        text: text,
      );

      setState(() {
        _messages.insert(0, message);
      });
    }
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(color: Colors.white),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: "Send a Message"),
                controller: _t1,
                onSubmitted: _handleSubmitted,
              ),
            ),
            ClipOval(
              child: Material(
                color: Colors.green, // button color
                child: InkWell(
                  splashColor: Color(0xFF075E54), // inkwell color
                  child:
                      SizedBox(width: 50, height: 50, child: Icon(Icons.send)),
                  onTap: () {
                    _handleSubmitted(_t1.text);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            reverse: true,
            itemBuilder: (_, index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        Divider(
          height: 1,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
