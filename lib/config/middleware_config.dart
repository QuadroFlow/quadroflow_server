import 'package:vaden/vaden.dart';

@Configuration()
final class MiddlewareConfig {
  const MiddlewareConfig();

  @Bean()
  Pipeline middleware() {
    return const Pipeline() //
        .addMiddleware(cors(allowedOrigins: ['*']))
        .addMiddleware(logRequests());
  }
}
