final class AppSettingsEntity {
  const AppSettingsEntity({
    required this.server,
    required this.openApi,
    required this.security,
  });

  final AppServerSettingsEntity server;
  final AppOpenAPISettingsEntity openApi;
  final AppSecuritySettingsEntity security;
}

final class AppServerSettingsEntity {
  const AppServerSettingsEntity({
    required this.host,
    required this.port,
  });

  final String host;
  final int port;
}

final class AppOpenAPISettingsEntity {
  const AppOpenAPISettingsEntity({
    required this.title,
    required this.version,
    required this.description,
  });

  final String title;
  final String version;
  final String description;
}

final class AppSecuritySettingsEntity {
  const AppSecuritySettingsEntity({
    required this.passwordCost,
    required this.token,
  });

  final int passwordCost;
  final AppTokenSecuritySettingsEntity token;
}

final class AppTokenSecuritySettingsEntity {
  const AppTokenSecuritySettingsEntity({
    required this.accessValidity,
    required this.refreshValidity,
  });

  final int accessValidity;
  final int refreshValidity;
}
