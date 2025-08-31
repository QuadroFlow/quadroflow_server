import 'package:quadroflow/src/domain/enums/app_mode_enum.dart';

final class AppEnvironmentEntity {
  const AppEnvironmentEntity({
    required this.db,
    required this.mode,
    required this.openApi,
    required this.security,
  });

  final AppDbEnvEntity db;
  final AppModeEnumEntity mode;
  final AppOpenApiEnvEntity openApi;
  final AppSecurityEnvEntity security;
}

final class AppDbEnvEntity {
  const AppDbEnvEntity({
    required this.ssl,
    required this.host,
    required this.port,
    required this.database,
    required this.username,
    required this.password,
  });

  final String ssl;
  final String host;
  final int port;
  final String database;
  final String username;
  final String password;
}

final class AppOpenApiEnvEntity {
  const AppOpenApiEnvEntity({required this.enabled});

  final bool enabled;
}

final class AppSecurityEnvEntity {
  const AppSecurityEnvEntity({
    required this.tokenSecret,
    required this.tokenIssuer,
    required this.tokenAudiences,
  });

  final String tokenIssuer;
  final String tokenSecret;
  final List<String> tokenAudiences;
}
