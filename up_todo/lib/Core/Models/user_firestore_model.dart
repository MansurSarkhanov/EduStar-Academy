class UserFirestoreModel {
  String? email;
  String? password;
  String? username;
  String? image;

  UserFirestoreModel({this.email, this.password, this.username, this.image});

  UserFirestoreModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    username = json['username'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    data['username'] = username;
    data['image'] = image;
    return data;
  }
}
