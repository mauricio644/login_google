import 'package:encode_app/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInGoogleBtn extends StatelessWidget {
  const SignInGoogleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/encodelabs_sa_logo.jpg'),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () {
              BlocProvider.of<AuthBloc>(context).add(LoginGooglePressed());
            },
            child: const Text(
              "Login Google",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 58, 93, 70)),
            ),
          ),
        ),
      ],
    );
  }
}
