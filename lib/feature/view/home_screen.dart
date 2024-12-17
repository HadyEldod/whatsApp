import 'package:flutter/material.dart';
import 'package:whats_app/feature/view/widget/chat_item.dart';

import '../model/chat_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        // Sets the green color for the entire BottomNavigationBar
        selectedItemColor: Colors.green,
        // Highlight selected item with white color
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "group",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive),
            label: "archive",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'WhatsApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: listtt.length,
        itemBuilder: (context, index) {
          return ChatItem(
            chatModel: listtt[index],
          );
        },
      ),
    );
  }
}

TextStyle style() {
  return TextStyle(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black);
}
