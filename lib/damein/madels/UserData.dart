class UserData {
  static final UserData _instance = UserData._internal();

  // O'zingizning ma'lumotlaringiz
  String firstName = '';
  String lastName = '';

  // Private constructor
  UserData._internal();

  // Singletonni qaytaradi
  static UserData get instance => _instance;
}
