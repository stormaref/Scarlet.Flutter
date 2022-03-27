class UserProfileModel {
  late String id;
  late String username;
  late String? name;
  late String? profileImage;
  late String birthDate;
  late int gender;

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    profileImage = json['profileImage'];
    birthDate = json['birthDate'];
    gender = json['gender'];
  }
}
