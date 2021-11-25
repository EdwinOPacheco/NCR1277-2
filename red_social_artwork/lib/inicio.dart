import 'package:flutter/material.dart';
import 'package:red_social_artwork/pages/chat_page.dart';
import 'package:red_social_artwork/pages/home_page.dart';
import 'package:red_social_artwork/pages/post_page.dart';

class InicioPage extends StatefulWidget {  

  @override
  State<InicioPage> createState() => _InicioPage();
}

class _InicioPage extends State<InicioPage> {

 int currentIndex= 0;
 final pages = [
  HomePage(),
  ChatPage(),
  PostPage(),
 ];

 @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: pages [currentIndex], 
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.yellowAccent,
          unselectedItemColor: Colors.white70,
          iconSize: 40,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat'
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.public),
              label: 'Post'
              
            ),
          ],
        ),
      );
  }
}



