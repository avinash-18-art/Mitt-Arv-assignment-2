class AuthUtils {
  static String? _token;

  // Set the token after successful login
  static void setToken(String token) {
    _token = token;
  }

  // Get the token for making authenticated requests
  static String? getToken() {
    return _token;
  }

  // Check if the user is authenticated
  static bool isAuthenticated() {
    return _token != null;
  }

  // Clear the token after logout
  static void clearToken() {
    _token = null;
  }
}
