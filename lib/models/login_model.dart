class LoginModel {
  String email;
  String password;

  LoginModel(this.email, this.password);

  Map toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
