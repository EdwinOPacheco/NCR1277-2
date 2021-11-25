import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {  

  @override
  State<PostPage> createState() => _PostPage();
}

class _PostPage extends State<PostPage> { 

 @override
    Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Post', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,          
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Post', style: TextStyle(
            fontSize: 60
          ),
        ),
      ),  
    );


}