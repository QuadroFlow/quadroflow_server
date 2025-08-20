import 'package:vaden/vaden.dart';

@Configuration()
class AppConfiguration {
  const AppConfiguration();

  @Bean()
  ApplicationSettings settings() {
    return ApplicationSettings.load('application.yaml');
  }

  @Bean()
  Pipeline globalMiddleware(ApplicationSettings settings) {
    return const Pipeline() //
        .addMiddleware(cors(allowedOrigins: ['*']))
        .addVadenMiddleware(EnforceJsonContentType())
        .addMiddleware(logRequests());
  }
}
