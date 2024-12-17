
import 'package:flutter/material.dart';

import '../../model/chat_model.dart';
import '../home_screen.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.chatModel});

  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chatModel.image),
      ),
      title: Text(chatModel.title, style: style()),
      subtitle: Text(chatModel.subTitle),
      trailing: Text("sun"),
    );
  }
}