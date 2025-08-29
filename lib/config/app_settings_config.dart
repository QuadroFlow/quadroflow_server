// ignore_for_file: avoid_dynamic_calls

import 'package:quadroflow/src/domain/entities/app_settings.dart';
import 'package:vaden/vaden.dart';

@Configuration()
final class AppSettingsConfig {
  const AppSettingsConfig();

  @Bean()
  ApplicationSettings rawSettings() {
    return ApplicationSettings.load('application.yaml');
  }

  @Bean()
  AppSettings settings() {
    final settings = ApplicationSettings.load('application.yaml');

    final serverHost = settings['server']['host'];
    if (serverHost == null || serverHost is! String) {
      throw StateError('Server host is not set or is not a string.');
    }

    final serverPort = settings['server']['port'];
    if (serverPort == null || serverPort is! int) {
      throw StateError('Server port is not set or is not an integer.');
    }

    final openApiVersion = settings['openapi']['version'];
    if (openApiVersion == null || openApiVersion is! String) {
      throw StateError('OpenAPI version is not set or is not a string.');
    }

    final openApiTitle = settings['openapi']['title'];
    if (openApiTitle == null || openApiTitle is! String) {
      throw StateError('OpenAPI title is not set or is not a string.');
    }

    final openApiDescription = settings['openapi']['description'];
    if (openApiDescription == null || openApiDescription is! String) {
      throw StateError('OpenAPI description is not set or is not a string.');
    }

    return AppSettings(
      server: AppServerSettings(
        host: serverHost,
        port: serverPort,
      ),
      openApi: AppOpenAPISettings(
        version: openApiVersion,
        title: openApiTitle,
        description: openApiDescription,
      ),
    );
  }
}
