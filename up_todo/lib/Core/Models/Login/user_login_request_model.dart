import 'package:json_annotation/json_annotation.dart';

part "user_login_request_model.g.dart";

@JsonSerializable()
class UserLoginRequestModel {
  String? email;
  String? password;

  UserLoginRequestModel({this.email, this.password});

  factory UserLoginRequestModel.fromJson(Map<String, dynamic> json) {
    return _$UserLoginRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, String> data = <String, String>{};
    return _$UserLoginRequestModelToJson(this);
  }
}
