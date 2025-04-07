import 'package:modu_3_dart_study/data_source/25-04-07/auth_remote_data_source.dart';
import 'package:modu_3_dart_study/data_source/25-04-07/mock_auth_remote_data_source_impl.dart';
import 'package:modu_3_dart_study/repository/25-04-07/user_repository.dart';
import 'package:modu_3_dart_study/repository/25-04-07/user_repository_impl.dart';
import 'package:test/scaffolding.dart';

void main() async {
  group('AuthRepository test', () {
    final AuthRemoteDataSource authRemoteDataSource =
        MockAuthRemoteDataSource();
    final AuthRepository authRepository = AuthRepositoryImpl(
      authRemoteDataSource,
    );

    test('이메일이 유효하지 않음', () async {});
  });
}
