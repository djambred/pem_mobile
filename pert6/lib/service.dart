class AppUrl {
  static const String liveBaseURL = "https://api.djambred.my.id/student";
  //static const String localBaseURL = "http://10.0.2.2:4000/api/v1";

  static const String baseURL = liveBaseURL;
  static const String login = baseURL;
  static const String register = baseURL + "/registration";
  static const String forgotPassword = baseURL + "/forgot-password";
}
