// ignore_for_file: avoid_dynamic_calls

import 'dart:async';

import 'package:quadroflow/src/domain/entities/environment_entity.dart';
import 'package:vaden/vaden.dart';
import 'package:vaden/vaden_openapi.dart' hide Response;

@Controller('/docs')
class OpenAPIController {
  const OpenAPIController(this._swaggerUI, this._environment);

  final SwaggerUI _swaggerUI;
  final EnvironmentEntity _environment;

  @Get('/')
  FutureOr<Response> getSwaggerUI(Request request) {
    final isEnabled = _environment.openApi.enabled;
    if (isEnabled == true) return _swaggerUI.call(request);

    return Response.notFound('Not Found');
  }

  @Get('/openapi.json')
  Response getOpenApiJSON(Request request) {
    final isEnabled = _environment.openApi.enabled;
    if (isEnabled == true) {
      return Response.ok(
        _swaggerUI.schemaText,
        headers: {'Content-Type': 'application/json'},
      );
    }

    return Response.notFound('Not Found');
  }
}
