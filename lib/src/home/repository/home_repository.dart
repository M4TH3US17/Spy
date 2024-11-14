import 'dart:convert';
import 'package:spy/src/shared/connection/http_wrapper.dart';
import 'package:spy/src/shared/model/base_resposta_api.dart';

abstract class HomeRepository {
  Future<RespostaAPI> getAllFacebook();
  Future<RespostaAPI> getAllInstagram();
}

class HttpHomeRepository implements HomeRepository {
  final String baseUrl = 'https://api.example.com';

  final http = const HttpWrapper('HttpHomeRepository');

  @override
  Future<RespostaAPI> getAllFacebook() async {
    try {
      final url = Uri.parse('$baseUrl/facebook');

      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 500) {
        throw Exception('Erro interno no servidor');
      }

      var data = json.decode(response.body);

      return RespostaAPI(
        code: response.statusCode,
        message: 'Success',
        data: data,
      );
    } catch (e) {
      return RespostaAPI(
          code: 500, message: 'Erro na listagem de facebooks: $e');
    }
  }

  @override
  Future<RespostaAPI> getAllInstagram() async {
    try {
      final url = Uri.parse('$baseUrl/instagram');

      final response = await http.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 500) {
        throw Exception('Erro interno no servidor');
      }

      var data = json.decode(response.body);

      return RespostaAPI(
        code: response.statusCode,
        message: 'Success',
        data: data,
      );
    } catch (e) {
      return RespostaAPI(
          code: 500, message: 'Erro na listagem de instagrams: $e');
    }
  }
}
