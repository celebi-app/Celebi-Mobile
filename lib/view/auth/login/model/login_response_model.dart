import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  LoginResponseModel({this.token});
  final String? token;

  LoginResponseModel fromJson(Map<String, Object?> json) {
    return _$LoginResponseModelFromJson(json);
  }

  Map<String, Object?> toJson() {
    return _$LoginResponseModelToJson(this);
  }
}
