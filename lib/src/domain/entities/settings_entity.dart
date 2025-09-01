final class SettingsEntity {
  const SettingsEntity({
    required this.server,
    required this.openApi,
    required this.security,
    required this.resource,
  });

  final ServerSettingsEntity server;
  final OpenAPISettingsEntity openApi;
  final SecuritySettingsEntity security;
  final ResourceSettingsEntity resource;
}

final class ServerSettingsEntity {
  const ServerSettingsEntity({
    required this.host,
    required this.port,
  });

  final String host;
  final int port;
}

final class OpenAPISettingsEntity {
  const OpenAPISettingsEntity({
    required this.title,
    required this.version,
    required this.description,
  });

  final String title;
  final String version;
  final String description;
}

final class SecuritySettingsEntity {
  const SecuritySettingsEntity({
    required this.passwordCost,
    required this.accessValidity,
    required this.refreshValidity,
  });

  final int passwordCost;
  final int accessValidity;
  final int refreshValidity;
}

final class ResourceSettingsEntity {
  const ResourceSettingsEntity({
    required this.folder,
    required this.defaultFile,
  });

  final Uri folder;
  final Uri defaultFile;
}
