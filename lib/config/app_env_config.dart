import 'package:dotenv/dotenv.dart';
import 'package:quadroflow/src/domain/entities/app_env.dart';
import 'package:vaden/vaden.dart';

@Configuration()
final class AppConfiguration {
  const AppConfiguration();

  @Bean()
  AppEnvironment environment() {
    final env = DotEnv(includePlatformEnvironment: true, quiet: true)..load();

    final dbSSL = env['DB_SSL'];
    if (dbSSL == null || dbSSL.isEmpty) {
      throw StateError('Database SSL is not set or is empty.');
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

    return AppEnvironment(
      openApi: AppOpenApiEnv(
        enabled: openApiEnabled == 'true',
      ),
      db: AppDbEnv(
        ssl: dbSSL,
        host: dbHost,
        port: int.parse(dbPort),
        database: dbDatabase,
        username: dbUsername,
        password: dbPassword,
      ),
    );
  }
}
