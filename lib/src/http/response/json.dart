import 'dart:io';
import 'response.dart';

extension ResponseWithJson on Response {
  Future<void> json(
    Object data, {
    int? statusCode,
  }) async {
    /// set the Response contentType to Json
    response.headers.contentType = ContentType.json;
    // set the default status code
    response.statusCode = statusCode ?? defStatusCode;

    /// append the data to the response
    await write(toJson(data));
  }
}