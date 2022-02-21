class User {
  final int id;
  final String profilePhoto;
  final String phoneNumber;
  final int otp;
  final String fullName;
  final String email;
  final String createdAt;
  final String updatedAt;

  User.fromJson(Map<String, dynamic> jsonMap)
      : id = jsonMap['id'] ?? 0,
        profilePhoto = jsonMap['profilePhoto'] ?? "",
        phoneNumber = jsonMap['phoneNumber'] ?? "",
        otp = jsonMap['otp'] ?? 0,
        fullName = jsonMap['fullName'] ?? "",
        email = jsonMap['email'] ?? "",
        createdAt = jsonMap['createdAt'] ?? "",
        updatedAt = jsonMap['updatedAt'] ?? "";
}
