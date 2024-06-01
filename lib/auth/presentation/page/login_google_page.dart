import 'package:encode_app/auth/domain/use_case/auth_use_case.dart';
import 'package:encode_app/auth/presentation/bloc/auth_bloc.dart';
import 'package:encode_app/auth/presentation/widgets/sign_in_google_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class LoginGooglePage extends StatelessWidget {
  const LoginGooglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        GetIt.instance.get<SignInWithGoogleUseCase>(),
      )..add(LoginGooglePressed()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            context.go('/home');
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Inicio de Session. Fallo')),
            );
          }
        },
        child: Scaffold(
          body: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return const Center(
                child: SingleChildScrollView(child: SignInGoogleBtn()),
              );
            },
          ),
        ),
      ),
    );
  }
}
