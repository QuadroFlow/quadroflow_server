final class AppEnvironment {
  const AppEnvironment({
    required this.db,
    required this.openApi,
  });

  final AppDbEnv db;
  final AppOpenApiEnv openApi;
}

final class AppDbEnv {
  const AppDbEnv({
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

final class AppOpenApiEnv {
  const AppOpenApiEnv({required this.enabled});

  final bool enabled;
}
