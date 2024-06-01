import 'package:encode_app/auth/domain/repository/repostory_auth.dart';
import 'package:encode_app/auth/domain/use_case/auth_use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GetIt getIt = GetIt.instance;

void authConfigGetit() {

  getIt.registerLazySingleton(() => FirebaseAuth.instance);
  getIt.registerLazySingleton(() => GoogleSignIn());
  getIt.registerSingleton<AuthRepository>(AuthRepository());

  GetIt.instance.registerSingleton(
    SignInWithGoogleUseCase(
      GetIt.instance.get<AuthRepository>(),
    ),
  );
}