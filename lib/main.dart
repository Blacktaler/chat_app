import 'package:clean_architecture/src/core/routes/app_routes.dart';
import 'package:clean_architecture/src/core/themes/app_themes.dart';
import 'package:clean_architecture/src/presentation/blocs/auth/auth_bloc.dart';
import 'package:clean_architecture/src/presentation/blocs/messaging/messaging_bloc.dart';
import 'package:clean_architecture/src/presentation/views/auth_page.dart';
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
    AppRoutes.onGenerateRoute(RouteSettings());
    AppRoutes.gg();
    return MaterialApp(
      onGenerateRoute: AppRoutes.onGenerateRoute,
      home: AuthPage(),
    );
  }
}
