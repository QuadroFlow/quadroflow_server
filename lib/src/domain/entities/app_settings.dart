final class AppSettings {
  const AppSettings({
    required this.server,
    required this.openApi,
  });

  final AppServerSettings server;
  final AppOpenAPISettings openApi;
}

final class AppServerSettings {
  const AppServerSettings({
    required this.host,
    required this.port,
  });

  final String host;
  final int port;
}

final class AppOpenAPISettings {
  const AppOpenAPISettings({
    required this.title,
    required this.version,
    required this.description,
  });

  final String title;
  final String version;
  final String description;
}
