class AuthResponse {
  late String username;
  late String token;
  late String refreshToken;
  late bool succeeded;
  late List<String> errors;

  AuthResponse.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    token = json['token'];
    refreshToken = json['refreshToken'];
    succeeded = json['succeeded'];
    errors = json['errors'] ?? List.empty();
  }
}
