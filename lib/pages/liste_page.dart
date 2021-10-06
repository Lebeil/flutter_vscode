import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:flutter_vscode/cours.dart';
import 'package:flutter_vscode/pages/info_page.dart';

//Liste de faux cours
final crs = List<Cours>.generate(
    10,
    (i) => Cours("Cours de logiciel $i", "Lorem ispsum oijfoizjpof ndi oiejfpz",
        "https://formation-facile.fr/wp-content/uploads/2020/06/vignette-unity-udemy.png"));

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Liste des formations"),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              // Design list
              Cours cours = Cours(
                  crs[index].name, crs[index].description, crs[index].image);
              return SizedBox(
                height: 70,
                child: ListTile(
                    onTap: () {
                      //TODO: Naviguer vers page cours cliqué
                      log(cours.name + " clicked!");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InfosPage(
                                  cours: cours,
                                )),
                      );
                    },
                    leading: Image.network(cours.image),
                    title: Text(cours.name),
                    // ignore: prefer_const_literals_to_create_immutables
                    subtitle: Row(children: <Widget>[
                      const Text("29.99 € - 4.5"),
                      // ignore: prefer_const_constructors
                      Icon(
                        Icons.star,
                        size: 18,
                      )
                    ])),
              );
            },
            separatorBuilder: (BuildContext contexte, int index) =>
                const Divider(),
            itemCount: crs.length));
  }
}
