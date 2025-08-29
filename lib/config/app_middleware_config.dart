import 'package:vaden/vaden.dart';

@Configuration()
final class AppMiddlewareConfiguration {
  const AppMiddlewareConfiguration();

  @Bean()
  Pipeline middleware() {
    return const Pipeline() //
        .addMiddleware(cors(allowedOrigins: ['*']))
        .addMiddleware(logRequests());
  }
}
