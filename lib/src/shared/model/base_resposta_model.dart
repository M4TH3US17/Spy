import 'package:spy/src/shared/enums/platforms.dart';

abstract class BaseRespostaModel {
  String? ip;
  Platform platform;
  String? url;
  DateTime date;

  BaseRespostaModel({
    this.ip,
    this.url,
    required this.date,
    required this.platform,
  });
}
