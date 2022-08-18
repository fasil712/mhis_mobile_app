class ApiConstants {
  static String baseUrl = 'http://192.168.67.19:3000';
  static Map<String, String> headers = {"Content-Type": "application/json"};
  static String clientListEndpoint = '/clientList';
  static String addClientEndpoint = '/mobileRegister';
  static String usersLoginEndpoint = '/mobileLogin';
  static String customerFeedback = '/sendFeedback';
}
