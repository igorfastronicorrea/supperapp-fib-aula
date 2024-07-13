import 'package:flutter/material.dart';
import 'package:supeerapp/api/api_service.dart';
import 'package:supeerapp/herois/heroi_item_list.dart';
import 'package:supeerapp/model/heroi_item_model.dart';

class ListaHeroiPage extends StatefulWidget {
  const ListaHeroiPage({Key? key}) : super(key: key);

  @override
  _ListaHeroiPageState createState() => _ListaHeroiPageState();
}

class _ListaHeroiPageState extends State<ListaHeroiPage> {
  late Future<List<HeroiItemModel>> futureHerois;

  @override
  void initState() {
    super.initState();
    futureHerois = ApiService().fetchHerois();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Listagem de Herois"),
      ),
      body: FutureBuilder(
        future: futureHerois,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro'));
          } else {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return HeroiItemList(heroi: snapshot.data![index]);
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            );
          }
        },
      ),
    );
  }
}
