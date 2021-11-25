import 'package:flutter/material.dart';



class ChatPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Chat', style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Colors.white,          
        ),
      ),
      centerTitle: true,
    ),
    body: Center(
      child: Text(
        'Chat', style: TextStyle(
          fontSize: 60
        ),
      ),
    ), 
  );
  
}