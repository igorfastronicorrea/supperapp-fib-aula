import 'package:flutter/material.dart';
import 'package:supeerapp/api/api_service.dart';

class ListaHeroiPage extends StatefulWidget {
  const ListaHeroiPage({Key? key}) : super(key: key);

  @override
  _ListaHeroiPageState createState() => _ListaHeroiPageState();
}

class _ListaHeroiPageState extends State<ListaHeroiPage> {
  @override
  void initState() {
    super.initState();
    ApiService().fetchHerois();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Listagem de Herois"),
      ),
      body: Scaffold(),
    );
  }
}
