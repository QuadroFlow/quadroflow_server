import 'dart:convert';

import 'package:vaden/vaden.dart';

@ControllerAdvice()
final class ControllerAdviceConfig {
  const ControllerAdviceConfig(this._dson);

  final DSON _dson;

  @ExceptionHandler(ResponseException)
  Future<Response> handleResponseException(ResponseException<dynamic> e) async {
    return e.generateResponse(_dson);
  }

  @ExceptionHandler(Exception)
  Response handleException(Exception e) {
    return Response.internalServerError(
      body: jsonEncode({'message': e.toString()}),
    );
  }
}
