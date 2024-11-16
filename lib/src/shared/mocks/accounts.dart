import 'package:spy/src/home/model/resposta_facebook.dart';
import 'package:spy/src/home/model/resposta_instagram.dart';
import 'package:spy/src/shared/enums/platforms.dart';

List<RespostaFacebook> listaDeFacebooksMock() {
  List<RespostaFacebook> facebooks = [
    RespostaFacebook(
        date: DateTime.now(),
        email: "account1@gmail.com",
        senha: "123",
        platform: Platform.FACEBOOK,
        ip: "000.000.000.001",
        url: "http://url1.com"),
    RespostaFacebook(
        date: DateTime.now(),
        email: "account2@gmail.com",
        senha: "1233456",
        platform: Platform.FACEBOOK,
        ip: "000.000.000.002",
        url: "http://url2.com"),
  ];

  return facebooks;
}

List<RespostaInstagram> listaDeInstagramsMock() {
  List<RespostaInstagram> instagrams = [
    RespostaInstagram(
        date: DateTime.now(),
        user: "user1",
        senha: "123",
        platform: Platform.INSTAGRAM,
        ip: "000.000.000.001",
        url: "http://url1.com"),
    RespostaInstagram(
        date: DateTime.now(),
        user: "user2",
        senha: "1233456",
        platform: Platform.INSTAGRAM,
        ip: "000.000.000.002",
        url: "http://url2.com"),
  ];

  return instagrams;
}
