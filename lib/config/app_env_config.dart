import 'package:dotenv/dotenv.dart';
import 'package:quadroflow/src/domain/entities/app_env_entity.dart';
import 'package:quadroflow/src/domain/enums/app_mode_enum.dart';
import 'package:vaden/vaden.dart';

@Configuration()
final class AppEnvConfig {
  const AppEnvConfig();

  @Bean()
  AppEnvironmentEntity environment() {
    final env = DotEnv(includePlatformEnvironment: true, quiet: true)..load();

    final mode = env['MODE'];
    if (mode == null || mode.isEmpty) {
      throw StateError('App mode is not set or is empty.');
    }

    final dbSSL = env['DB_SSL'];
    if (dbSSL == null || dbSSL.isEmpty) {
      throw StateError('Database ssl is not set or is empty.');
    }

    final dbHost = env['DB_HOST'];
    if (dbHost == null || dbHost.isEmpty) {
      throw StateError('Database host is not set or is empty.');
    }

    final dbPort = env['DB_PORT'];
    if (dbPort == null || dbPort.isEmpty) {
      throw StateError('Database port is not set or is empty.');
    }

    final dbDatabase = env['DB_NAME'];
    if (dbDatabase == null || dbDatabase.isEmpty) {
      throw StateError('Database name is not set or is empty.');
    }

    final dbUsername = env['DB_USER'];
    if (dbUsername == null || dbUsername.isEmpty) {
      throw StateError('Database username is not set or is empty.');
    }

    final dbPassword = env['DB_PASS'];
    if (dbPassword == null || dbPassword.isEmpty) {
      throw StateError('Database password is not set or is empty.');
    }

    final openApiEnabled = env['OPEN_API_ENABLED'];
    if (openApiEnabled == null || openApiEnabled.isEmpty) {
      throw StateError('Open API enabled is not set or is empty.');
    }

    final tokenIssuer = env['TOKEN_ISSUER'];
    if (tokenIssuer == null || tokenIssuer.isEmpty) {
      throw StateError('Token issuer is not set or is empty.');
    }

    final tokenSecret = env['TOKEN_SECRET'];
    if (tokenSecret == null || tokenSecret.isEmpty) {
      throw StateError('Token secret is not set or is empty.');
    }

    final tokenAudiences = env['TOKEN_AUDIENCES'];
    if (tokenAudiences == null || tokenSecret.isEmpty) {
      throw StateError('Token audiences is not set or is empty.');
    }

    return AppEnvironmentEntity(
      mode: _modeAdapter(mode),
      db: AppDbEnvEntity(
        ssl: dbSSL,
        host: dbHost,
        port: int.parse(dbPort),
        database: dbDatabase,
        username: dbUsername,
        password: dbPassword,
      ),
      openApi: AppOpenApiEnvEntity(
        enabled: openApiEnabled == 'true',
      ),
      security: AppSecurityEnvEntity(
        tokenIssuer: tokenIssuer,
        tokenSecret: tokenSecret,
        tokenAudiences: tokenAudiences.split(',').map((a) => a.trim()).toList(),
      ),
    );
  }

  AppModeEnumEntity _modeAdapter(String mode) {
    return switch (mode) {
      'debug' => AppModeEnumEntity.debug,
      'release' => AppModeEnumEntity.release,
      _ => AppModeEnumEntity.debug,
    };
  }
}
