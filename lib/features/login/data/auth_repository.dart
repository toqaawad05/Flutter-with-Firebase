class AuthRepository {
  Future<bool> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(Duration(seconds: 2));
    if (email.isNotEmpty && password.isNotEmpty) {
      return true; 
    } else {
      throw Exception('Email or password is empty');
    }
  }
}
