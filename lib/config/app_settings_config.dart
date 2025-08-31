// ignore_for_file: avoid_dynamic_calls

import 'package:quadroflow/src/domain/entities/app_settings_entity.dart';
import 'package:vaden/vaden.dart';

@Configuration()
final class AppSettingsConfig {
  const AppSettingsConfig();

  @Bean()
  ApplicationSettings rawSettings() {
    return ApplicationSettings.load('application.yaml');
  }

  @Bean()
  AppSettingsEntity settings() {
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

    final passwordCost = settings['secret']['passwordCost'];
    if (passwordCost == null || passwordCost is! int) {
      throw StateError('Password cost is not set or is not a int.');
    }

    final tokenAccessValidity = settings['secret']['accessValidity'];
    if (tokenAccessValidity == null || tokenAccessValidity is! int) {
      throw StateError('Access token validity is not set or is not a int.');
    }

    final tokenRefreshValidity = settings['secret']['refreshValidity'];
    if (tokenRefreshValidity == null || tokenRefreshValidity is! int) {
      throw StateError('Refresh token validity is not set or is not a int.');
    }

    return AppSettingsEntity(
      server: AppServerSettingsEntity(
        host: serverHost,
        port: serverPort,
      ),
      openApi: AppOpenAPISettingsEntity(
        version: openApiVersion,
        title: openApiTitle,
        description: openApiDescription,
      ),
      security: AppSecuritySettingsEntity(
        passwordCost: passwordCost,
        token: AppTokenSecuritySettingsEntity(
          accessValidity: tokenAccessValidity,
          refreshValidity: tokenRefreshValidity,
        ),
      ),
    );
  }
}
