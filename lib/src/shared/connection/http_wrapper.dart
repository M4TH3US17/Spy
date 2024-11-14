import 'package:http/http.dart' as http;

const DEFAULT_TIMEOUT = 10;

class HttpWrapper {
  final String caller;

  const HttpWrapper(this.caller);

  Future<http.Response> get(
    Uri url, {
    Map<String, String>? headers,
    Duration timeout = const Duration(minutes: DEFAULT_TIMEOUT),
  }) async {
    final response = await http.get(url, headers: headers).timeout(timeout);

    return response;
  }

  Future<http.Response> post(
    Uri url, {
    Object? body,
    Map<String, String>? headers,
    Duration timeout = const Duration(minutes: DEFAULT_TIMEOUT),
  }) async {
    final response =
        await http.post(url, body: body, headers: headers).timeout(timeout);
    return response;
  }

  Future<http.Response> put(
    Uri url, {
    Object? body,
    Map<String, String>? headers,
    Duration timeout = const Duration(minutes: DEFAULT_TIMEOUT),
  }) async {
    final response =
        await http.put(url, body: body, headers: headers).timeout(timeout);

    return response;
  }

  Future<http.Response> patch(
    Uri url, {
    Object? body,
    Map<String, String>? headers,
    Duration timeout = const Duration(minutes: DEFAULT_TIMEOUT),
  }) async {
    final response =
        await http.patch(url, body: body, headers: headers).timeout(timeout);

    return response;
  }

  Future<http.Response> delete(
    Uri url, {
    Map<String, String>? headers,
    Duration timeout = const Duration(minutes: DEFAULT_TIMEOUT),
  }) async {
    final response = await http.delete(url, headers: headers).timeout(timeout);

    return response;
  }
}
