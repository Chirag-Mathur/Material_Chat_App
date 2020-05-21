import 'package:flutter/material.dart';

const String _name = "Chirag";

class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 8),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 8)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _name,
                style: Theme.of(context).textTheme.subhead,
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(text),
              ),
            ],
          )
        ],
      ),
    );
  }
}
