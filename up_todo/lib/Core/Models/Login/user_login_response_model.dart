class UserLoginResponseModel {
  String? localId;
  String? email;
  String? displayName;
  String? idToken;
  bool? registered;
  String? refreshToken;
  String? expiresIn;

  UserLoginResponseModel(
      {this.localId, this.email, this.displayName, this.idToken, this.registered, this.refreshToken, this.expiresIn});

  UserLoginResponseModel.fromJson(Map<String, dynamic> json) {
    localId = json['localId'];
    email = json['email'];
    displayName = json['displayName'];
    idToken = json['idToken'];
    registered = json['registered'];
    refreshToken = json['refreshToken'];
    expiresIn = json['expiresIn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['localId'] = localId;
    data['email'] = email;
    data['displayName'] = displayName;
    data['idToken'] = idToken;
    data['registered'] = registered;
    data['refreshToken'] = refreshToken;
    data['expiresIn'] = expiresIn;
    return data;
  }
}
