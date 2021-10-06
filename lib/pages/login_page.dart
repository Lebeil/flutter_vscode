import 'package:flutter/material.dart';
import 'dart:developer';

import 'liste_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String mail = "";
  String pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page de login"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            _buildHeader(),
            const SizedBox(height: 15),
            _buildTitle(),
            _buildForm(context),
          ],
        ));
  }

  // Fonction create header page login
  Widget _buildHeader() {
    return Image.network("https://formation-facile.fr/banner-cours-udemy.png");
  }

  // create title
  Widget _buildTitle() {
    return const Text(
      'Connectez-vous',
      style: TextStyle(fontSize: 28),
    );
  }

  // create form
  Widget _buildForm(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            TextFormField(
              // récupérer le mail entré par l'utilisateur
              onChanged: (newText) {
                mail = newText;
              },
              decoration: const InputDecoration(labelText: "Votre mail ..."),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: "Votre mot de passe ..."),
              onChanged: (newText) {
                pass = newText;
              },
              obscureText: true,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  // ignore: todo
                  // TODO: Fonction de connexion
                  if (mail == "123" && pass == "123") {
                    //TODO: Vérifié via BDD
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListPage()));
                  } else {
                    log("Erreur identifiant");
                  }
                },
                child: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                )),
            TextButton(
                onPressed: () {},
                child: const Text("Mot de passe oublié ?"),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ))
          ],
        ));
  }
}
