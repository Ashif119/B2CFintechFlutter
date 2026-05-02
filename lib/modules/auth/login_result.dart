import 'package:json_annotation/json_annotation.dart';

part 'login_result.g.dart';

@JsonSerializable()
class LoginResult {

  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "password")
  String? password;
  @JsonKey(name: "mobileNo")
  String? mobileNo;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "countryCode")
  String? countryCode;
  @JsonKey(name: "token")
  String? token;
  @JsonKey(name: "refreshToken")
  String? refreshToken;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "profileImg")
  String? profileImg;
  @JsonKey(name: "lockout")
  String? lockout;
  @JsonKey(name: "wrongAttempt")
  int? wrongAttempt;
  @JsonKey(name: "role")
  int? role; //Agent=4
  @JsonKey(name: "wid")
  int? wid;
  @JsonKey(name: "twoFAType")
  int? twoFAType;
  @JsonKey(name: "isLocked")
  bool? isLocked;


  LoginResult(
      {this.id,
        this.username,
        this.password,
        this.mobileNo,
        this.email,
        this.countryCode,
        this.token,
        this.refreshToken,
        this.name,
        this.profileImg,
        this.lockout,
        this.wrongAttempt,
        this.role,
        this.wid,
        this.twoFAType,
        this.isLocked});

  factory LoginResult.fromJson(Map<String, dynamic> json) => _$LoginResultFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResultToJson(this);
}
