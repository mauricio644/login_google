import 'package:encode_app/auth/domain/repository/repostory_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInWithGoogleUseCase {
  final AuthRepository authRepository;

  SignInWithGoogleUseCase(this.authRepository);

  Future<User?> call() async {
    return await authRepository.signInWithGoogle();
  }
}
