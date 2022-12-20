import 'package:clean_architecture/src/features/blocs/auth/auth_bloc.dart';
import 'package:clean_architecture/src/features/blocs/messaging/messaging_bloc.dart';
import 'package:clean_architecture/src/features/views/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiBlocProvider(providers: [
    BlocProvider(create: (_) => AuthBloc()),
    BlocProvider(create: (_) => MessagingBloc()..add(GetMessages())),
  ], child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthPage(),
    );
  }
}
