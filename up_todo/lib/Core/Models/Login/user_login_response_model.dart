import 'package:json_annotation/json_annotation.dart';

part "user_login_response_model.g.dart";

@JsonSerializable()
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

  factory UserLoginResponseModel.fromJson(Map<String, dynamic> json) {
    return _$UserLoginResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return _$UserLoginResponseModelToJson(this);
  }
}
