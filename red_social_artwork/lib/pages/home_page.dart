import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {  

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

 @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Artwork Sweet', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,          
          ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {}
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {}
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
          // Cabecera
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Imagen de perfil
                      ClipOval(
                        child: Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      
                      SizedBox(
                        width: 13.0,
                      ),

                      // Usuario
                      Text(
                        'dotcsv',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  
                  // Icono de ver mas
                  Icon(Icons.more_vert)
                ],
              ),
            ),

          // Imagen publicada
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),

          // Iconos de interacción con el usuario
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite),
                      SizedBox(width: 10.0,),
                      Icon(Icons.chat),
                      SizedBox(width: 10.0,),                  
                    ],
                  ),
                ],
              ),
            ),

          // Likes
            Row(
              children: <Widget>[
                SizedBox(width: 15.0,),
                ClipOval(
                  child: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                    width: 25.0,
                    height: 25.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10.0,),

                // A los otros que les gustó
                Text('Les gusta a'),
                SizedBox(width: 5.0,),
                Text(
                  'tercosmicqueen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 5.0,),
                Text('y'),
                SizedBox(width: 5.0,),
                Text(
                  '1,937 más',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
        ),
      );
  }
}