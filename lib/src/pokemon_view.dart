import 'package:flutter/material.dart';

class PokemonView extends StatefulWidget {
  const PokemonView({super.key});

  @override
  State<PokemonView> createState() => _PokemonViewState();
}

class _PokemonViewState extends State<PokemonView> {

  List<String> listName = [
    'Bullbasaur',
    'Charmander',
    'Eevee',
    'Pidgey',
    'Pikachu',
    'Pokeball',
    'Rattata',
    'Snorlax',
    'Squirtle',
    'Zubat',
  ];

  @override
  void initState() {
    //print("initState: ListName ${ListName[0].toString()}");
    listName.forEach((element){
      print("initState: element ${listName[0].toString()}");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Pokemon"),),
      body: ListView.builder(
        itemCount: listName.length,
        itemBuilder: (context, position) {
          return Container(padding: EdgeInsets.all(20),
          child: Text( listName[position],
          style: TextStyle(
            fontSize: 20
              ),
            ),
          );
        }
      ),
    );
  }
}