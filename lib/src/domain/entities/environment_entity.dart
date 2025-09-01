import 'package:quadroflow/src/domain/enums/mode_enum.dart';

final class EnvironmentEntity {
  const EnvironmentEntity({
    required this.db,
    required this.mode,
    required this.openApi,
    required this.security,
  });

  final DbEnvEntity db;
  final ModeEnumEntity mode;
  final OpenApiEnvEntity openApi;
  final SecurityEnvEntity security;
}

final class DbEnvEntity {
  const DbEnvEntity({
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

final class OpenApiEnvEntity {
  const OpenApiEnvEntity({required this.enabled});

  final bool enabled;
}

final class SecurityEnvEntity {
  const SecurityEnvEntity({
    required this.tokenSecret,
    required this.tokenIssuer,
    required this.tokenAudiences,
  });

  final String tokenIssuer;
  final String tokenSecret;
  final List<String> tokenAudiences;
}
