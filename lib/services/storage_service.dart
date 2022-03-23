import 'package:app/tools/statics.dart';

class StorageService {
  writeToken(String token, String refreshToken) async {
    var storage = Statics.storage;
    await storage.write(key: "token", value: token);
    await storage.write(key: "refreshToken", value: refreshToken);
  }

  Future<String?> readToken() async {
    var storage = Statics.storage;
    return await storage.read(key: "token");
  }

  Future<String?> readRefreshToken() async {
    var storage = Statics.storage;
    return await storage.read(key: "refreshToken");
  }
}
