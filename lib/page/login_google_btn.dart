import 'package:encode_app/services/auth_login_google.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginGoogleBtn extends StatelessWidget {
  const LoginGoogleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
                child: Image.asset('assets/images/encodelabs_sa_logo.jpg'),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      final user = await AuthLoginGoogle.signInWithGoogle();
                      if(user != null){
                        context.go('/home');
                      }
                    } on FirebaseAuthException catch (e) {
                      print(e);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(e.message.toString())));
                    } catch (error) {
                      print(error);
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(error.toString())));
                    }
                  },
                  // => BlocProvider.of<AuthBloc>(context).add(LoginGooglePressed()),
                  child: const Text(
                    "Login Google",
                    style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 58, 93, 70)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
