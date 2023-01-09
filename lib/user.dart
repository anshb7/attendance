class User {
  String emailId;
  User({required this.emailId});
  factory User.fromGsheets(Map<String, dynamic> json) {
    return User(emailId: json['emailId']);
  }

  Map<String, dynamic> toGsheets() {
    return {'emailId': emailId};
  }
}
