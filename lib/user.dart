class User {
  String emailId;
  double rollno;
  String name;
  String hostel;

  User(
      {required this.emailId,
      required this.name,
      required this.rollno,
      required this.hostel});
  factory User.fromGsheets(Map<String, dynamic> json) {
    return User(
        emailId: json['emailId'],
        rollno: json['rollno'],
        name: json['name'],
        hostel: json['hostel']);
  }
}
