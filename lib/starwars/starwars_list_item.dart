import 'package:flutter/material.dart';
import 'package:supeerapp/model/heroi_item_model.dart';
import 'package:supeerapp/herois/heroi_detalhe.dart';
import 'package:supeerapp/model/heroi_item_model.dart';

class StarWarsListItem extends StatelessWidget {
  final HeroiItemModel hero;
  final int index;

  const StarWarsListItem({required this.hero, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: index % 2 == 0
              ? [
                  Image.network(hero.imagem,
                      height: 180, width: 180, fit: BoxFit.fill),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      hero.nome,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ]
              : [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text(
                        hero.nome,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Image.network(hero.imagem,
                      height: 180, width: 180, fit: BoxFit.cover),
                ],
        ),
      ),
    );
  }
}
