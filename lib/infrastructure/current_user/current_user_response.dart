// ignore_for_file: invalid_annotation_target

class CurrentUserDTO {
  final int? userId;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? nicename;
  final String? displayname;
  final String? token;

  CurrentUserDTO({
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
    this.token,
    this.displayname,
    this.nicename,
  });

  factory CurrentUserDTO.fromJson(Map<String, dynamic> json) {
    return CurrentUserDTO(
      userId: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String?,
      displayname: json['displayname'] as String?,
      nicename: json['nicename'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': userId,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'token': token,
      'nicename': nicename,
      'displayname': displayname,
    };
  }
}
