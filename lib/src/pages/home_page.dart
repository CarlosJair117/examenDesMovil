import 'package:flutter/material.dart';
 
 
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Musica Favorita'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  leading: Icon(Icons.music_note),
                  onTap: () => Navigator.of(context).pushNamed('music'),
                ),
                ListTile(
                  title: Text('Comida Favorita'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  leading: Icon(Icons.food_bank),
                  onTap: () => Navigator.of(context).pushNamed('food'),
                ),
              ],
            ),
          ),
        ),
      );
}

}