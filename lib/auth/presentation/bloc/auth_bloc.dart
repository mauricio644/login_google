import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:encode_app/auth/domain/use_case/auth_use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  AuthBloc(this.signInWithGoogleUseCase) : super(AuthInitial()) {
    on<LoginGooglePressed>(onLoginGooglePressed);
  }

  FutureOr<void> onLoginGooglePressed(LoginGooglePressed event, emit) async{
   emit(AuthLoading());

     try {
        final user = await signInWithGoogleUseCase.call();
        if (user != null) {
          emit(AuthSuccess(user: user));
        } else {
          emit(AuthFailure(msgFail: 'Inicio de Session. Fallo'));
        }
      } catch (error) {
        emit(AuthFailure(msgFail: 'Inicio de Session. Fallo'));
      }
  }
}
