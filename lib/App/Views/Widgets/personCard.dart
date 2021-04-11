import 'package:PokeScientists/App/Models/cientistas.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Card personCard(Person person) => Card(
      child: InkWell(
        onTap: () {
          Modular.to.pushNamed(
              '/buscar/${person.personFirstName + person.personLastName}');
          print('{person.personFirstName + person.personLastName}');
        },
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: personListTile(person),
        ),
      ),
    );

ListTile personListTile(Person person) => ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        backgroundImage: AssetImage(person.image),
        radius: 25,
      ),
      title: Text(
        person.personFirstName + " " + person.personLastName,
        style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
      ),
    );
