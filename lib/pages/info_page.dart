import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_vscode/cours.dart';

class InfosPage extends StatefulWidget {
  final Cours cours;

  const InfosPage({Key? key, required this.cours}) : super(key: key);

  @override
  _InfosPageState createState() => _InfosPageState();
}

class _InfosPageState extends State<InfosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Détails du cours"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(children: <Widget>[
          _buildHeader(),
        ])));
  }

  Widget _buildHeader() {
    return Container(
      child: Image.asset(widget.cours.image),
    );
  }

  Widget _buildInfos() {
    return Container(
        child: Column(
      children: <Widget>[
        Text(
          widget.cours.name,
        )
      ],
    ));
  }
}
