library core;

import 'package:core/global_variables.dart';
import 'package:core/service/utils.dart';
import 'model/url_types.dart';
import 'service/auth.dart';

class Kinfolk {
  /// A Calculator.
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;

  /// setting server url and security keys (identifier,secret)
  void initializeBaseVariables(
      String urlEndPoint, String identifier, String secret) {
    GlobalVariables.urlEndPoint = urlEndPoint;
    GlobalVariables.identifier = identifier;
    GlobalVariables.secret = secret;
  }

  /// getting client from saved Access Token
  static getClient() => Authorization().client;

  /// getting client (service with Access Token) in first time with login,password
  getToken(String login, String password) =>
      Authorization().getAccessToken(login, password);

  static getFileUrl(String fileDescriptorId) =>
      Authorization().getFileUrlByFileDescriptorId(fileDescriptorId);

  static String createRestUrl(
          String serviceName, String methodName, Types type) =>
      Utils.createRestUrl(serviceName, methodName, type);
}
