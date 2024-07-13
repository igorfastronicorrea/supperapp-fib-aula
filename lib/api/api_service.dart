import 'package:http/http.dart' as http;
import 'package:supeerapp/model/heroi_item_model.dart';
import 'dart:convert';

class ApiService {
  Future<List<HeroiItemModel>> fetchHerois() async {
    final response = await http.get(
        Uri.parse('https://191fd58c43824dabbb1ce224212e2cac.api.mockbin.io/'));

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
