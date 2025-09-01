import 'package:quadroflow/src/repositories/user_repository.dart';
import 'package:vaden/vaden.dart';
import 'package:vaden_security/vaden_security.dart';

@Service()
final class UserDetailsServiceImpl implements UserDetailsService<UserDetails> {
  const UserDetailsServiceImpl(this._repository);

  final UserRepository _repository;

  @override
  Future<UserDetails?> loadUserByUsername(String username) async {
    final user = await _repository.getByEmail(username);
    if (user == null) return null;

    return UserDetails(
      username: user.email,
      password: user.password,
      roles: [user.role.name],
    );
  }
}
