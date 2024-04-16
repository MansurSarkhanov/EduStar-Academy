class FirebaseModel {
  String? email;
  String? password;
  String? uuid;

  FirebaseModel({this.email, this.password, this.uuid});

  FirebaseModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    uuid = json['uuid'];

    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['uuid'] = uuid;
    data['password'] = password;
    return data;
  }
}
