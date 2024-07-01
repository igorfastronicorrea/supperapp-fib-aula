import 'package:flutter/material.dart';

class IaGerarPage extends StatefulWidget {
  const IaGerarPage({Key? key}) : super(key: key);

  @override
  _IaGerarPageState createState() => _IaGerarPageState();
}

class _IaGerarPageState extends State<IaGerarPage> {
  TextEditingController _tfImagemGerar = TextEditingController();

  void _gerarImagem() {
    print(_tfImagemGerar.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Gerar Imagem"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _tfImagemGerar,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite o que deseja gerar"),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                onPressed: _gerarImagem,
                child: const Text("Gerar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
