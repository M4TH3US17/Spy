abstract class BaseRespostaModel {
  String? ip;
  String local;
  String? url;
  DateTime date;

  BaseRespostaModel({
    this.ip,
    this.url,
    required this.date,
    required this.local,
  });
}
