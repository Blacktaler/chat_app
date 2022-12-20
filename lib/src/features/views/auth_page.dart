import 'package:clean_architecture/src/features/blocs/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(GoogleSignInn(context));
              },
              child: Text("Sign in with google"))
        ],
      ),
    );
  }
}
