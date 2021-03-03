import 'package:examen_app/src/provider/data.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mi comida favorita'),
          backgroundColor: Colors.orange,
        ),
        body: _lista(),
      );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarComida(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapShot){
        return ListView(
          children: _listaItems(snapShot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    
    final List<Widget> cards = [];

    data.forEach((element) { 
      final widgetCard = Card(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:<Widget> [
              FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'), 
                image: NetworkImage(element['imagen']),
              ),
              SizedBox(height: 10,),
              Text('Comida: ${element['nombre']}', style: TextStyle( fontWeight: FontWeight.bold, fontSize:20 ),),
              
            ],
          ),
        ),
      );

      cards..add(widgetCard);
    });
    return cards;
  }
}