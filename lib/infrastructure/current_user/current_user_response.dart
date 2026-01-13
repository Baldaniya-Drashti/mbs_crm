// ignore_for_file: invalid_annotation_target

class CurrentUserDTO {
  final int? userId;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? nicename;
  final String? displayname;
  final AuthDTO? auth;

  CurrentUserDTO({
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
    this.auth,
    this.displayname,
    this.nicename,
  });

  factory CurrentUserDTO.fromJson(Map<String, dynamic> json) {
    return CurrentUserDTO(
      userId: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      displayname: json['displayname'] as String?,
      nicename: json['nicename'] as String?,
      auth: json['auth'] != null ? AuthDTO.fromJson(json['auth']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': userId,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'nicename': nicename,
      'displayname': displayname,
      'auth': auth?.toJson(),
    };
  }
}

class AuthDTO {
  final String? token;

  AuthDTO({this.token});

  factory AuthDTO.fromJson(Map<String, dynamic> json) {
    return AuthDTO(token: json['token'] as String?);
  }

  Map<String, dynamic> toJson() {
    return {'token': token};
  }
}
