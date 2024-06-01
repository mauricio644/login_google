part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final User user;

  AuthSuccess({required this.user});

  @override
  List<Object> get props => [user];
}

final class AuthFailure extends AuthState {
  final String msgFail;

  AuthFailure({required this.msgFail});
}