class RespostaAPI {
  int code = 200;
  String message;
  dynamic data;

  RespostaAPI({
    required this.code,
    required this.message,
    this.data,
  });
}
