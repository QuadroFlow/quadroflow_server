import 'package:quadroflow/src/domain/entities/environment_entity.dart';
import 'package:quadroflow/src/domain/entities/settings_entity.dart';
import 'package:vaden/vaden.dart';
import 'package:vaden_security/vaden_security.dart';

@Configuration()
final class SecurityConfig {
  const SecurityConfig();

  @Bean()
  PasswordEncoder passwordEncoder(SettingsEntity settings) {
    return BCryptPasswordEncoder(cost: settings.security.passwordCost);
  }

  @Bean()
  JwtService jwtService(EnvironmentEntity env, SettingsEntity settings) {
    return JwtService(
      secret: env.security.tokenSecret,
      issuer: env.security.tokenIssuer,
      audiences: env.security.tokenAudiences,
      tokenValidity: Duration(seconds: settings.security.accessValidity),
      refreshTokenValidity: Duration(
        seconds: settings.security.refreshValidity,
      ),
    );
  }

  @Bean()
  HttpSecurity httpSecurity() {
    return HttpSecurity([
      RequestMatcher('/auth/**').permitAll(),
      RequestMatcher('/docs/**').permitAll(),

      AnyRequest().authenticated(),
    ]);
  }
}
