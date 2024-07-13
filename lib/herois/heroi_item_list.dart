import 'package:flutter/material.dart';
import 'package:supeerapp/herois/heroi_detalhe.dart';
import 'package:supeerapp/model/heroi_item_model.dart';

class HeroiItemList extends StatelessWidget {
  final HeroiItemModel heroi;

  const HeroiItemList({required this.heroi});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("CLICOU NO INKEWELL " + heroi.nome);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HeroiDetalhe(heroi: heroi)),
        );
      },
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              heroi.imagem,
              height: 180,
              width: 180,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(heroi.nome),
          ],
        ),
      ),
    );
  }
}
