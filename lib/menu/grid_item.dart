import 'package:flutter/material.dart';
import 'package:supeerapp/herois/lista_heroi_page.dart';
import 'package:supeerapp/ia/ia_gerar_page.dart';

class GridItem extends StatelessWidget {
  final int kingkong;

  const GridItem({required this.kingkong}) : super();

  @override
  Widget build(BuildContext context) {
    List<IconData> listaDeIcones = [
      Icons.flash_on,
      Icons.computer_rounded,
      Icons.museum,
      Icons.camera,
    ];

    List<String> tituloDaLista = [
      "Listagem de Herois",
      "Inteligencia artificial",
      "Atracoes Turisticas",
      "Criar Atracao",
    ];

    IconData iconData = listaDeIcones[kingkong];
    String titulo = tituloDaLista[kingkong];

    return GestureDetector(
      onTap: () => {
        switch (kingkong) {
          0 => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListaHeroiPage(),
              ),
            ),
          1 => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const IaGerarPage(),
              ),
            ),
          _ => print("Opcao invalida")
        }
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 40,
            ),
            Text(titulo),
          ],
        ),
      ),
    );
  }
}
