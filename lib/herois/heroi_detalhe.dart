import 'package:flutter/material.dart';
import 'package:supeerapp/model/heroi_item_model.dart';

class HeroiDetalhe extends StatelessWidget {
  final HeroiItemModel heroi;

  const HeroiDetalhe({required this.heroi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhe"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Image.network(heroi.imagem,
              height: 200, width: double.infinity, fit: BoxFit.cover),
          Text(heroi.nome),
        ],
      ),
    );
  }
}
