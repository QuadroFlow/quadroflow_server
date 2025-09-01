// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:quadroflow/src/domain/entities/settings_entity.dart';
import 'package:vaden/vaden.dart';
import 'package:vaden/vaden_openapi.dart';

@Configuration()
final class OpenAPIConfig {
  const OpenAPIConfig();

  @Bean()
  OpenApi openApi(OpenApiConfig config, SettingsEntity settings) {
    return OpenApi(
      version: '3.0.0',
      tags: config.tags,
      paths: config.paths,
      servers: [config.localServer],
      components: Components(schemas: config.schemas),
      info: Info(
        title: settings.openApi.title,
        version: settings.openApi.version,
        description: settings.openApi.description,
      ),
    );
  }

  @Bean()
  SwaggerUI swaggerUI(OpenApi openApi, SettingsEntity settings) {
    return SwaggerUI(
      jsonEncode(openApi.toJson()),
      deepLink: true,
      title: settings.openApi.title,
    );
  }
}
