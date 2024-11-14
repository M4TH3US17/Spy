import 'package:spy/src/shared/model/base_resposta_model.dart';

class RespostaFacebook extends BaseRespostaModel {
  String email;
  String senha;

  RespostaFacebook({
    String? ip,
    String? url,
    required this.email,
    required this.senha,
    required String local,
    required DateTime date,
  }) : super(ip: ip, local: local, url: url, date: date);
}
