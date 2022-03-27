import 'package:app/tools/statics.dart';

class TokenService {
  static String? _token;
  static String? _refreshToken;
  Future<String?> get token async => _token ??= await readToken();
  Future<String?> get refreshToken async =>
      _refreshToken ??= await readRefreshToken();

  writeToken(String token, String refreshToken) async {
    var storage = Statics.storage;
    await storage.write(key: "token", value: token);
    await storage.write(key: "refreshToken", value: refreshToken);
    _token = token;
    _refreshToken = refreshToken;
  }

  Future<String?> readToken() async {
    var storage = Statics.storage;
    var token = await storage.read(key: "token");
    _token = token;
    return token;
  }

  Future<String?> readRefreshToken() async {
    var storage = Statics.storage;
    var refreshToken = await storage.read(key: "refreshToken");
    _refreshToken = refreshToken;
    return refreshToken;
  }

  Future remove() async {
    await Statics.storage.delete(key: "token");
    await Statics.storage.delete(key: "refreshToken");
    _token = null;
    _refreshToken = null;
  }
}
