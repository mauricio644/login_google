import 'package:encode_app/auth/presentation/page/login_google_page.dart';
import 'package:encode_app/config/get_ig_configurate.dart';
import 'package:encode_app/firebase_options.dart';
import 'package:encode_app/home/page/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getIgConfigure();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter route = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginGooglePage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: route,
    );
  }
}
