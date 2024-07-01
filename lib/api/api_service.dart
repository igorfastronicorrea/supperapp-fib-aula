import 'dart:js_interop_unsafe';
import 'package:http/http.dart' as http;
import 'package:supeerapp/model/heroi_item_model.dart';
import 'dart:convert';

class ApiService {
  Future<List<HeroiItemModel>> fetchHerois() async {
    final response =
        await http.get(Uri.parse('https://demo1201562.mockable.io/herois'));

    if (response.statusCode == 200) {
      print(response.body);
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((hero) => HeroiItemModel.fromJson(hero)).toList();
    } else {
      print("erro");
      throw Exception('Falha ao carregar os heróis');
    }
  }
}
