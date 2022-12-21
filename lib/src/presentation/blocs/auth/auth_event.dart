part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class GoogleSignInn extends AuthEvent{
  BuildContext context;
  GoogleSignInn(this.context);
}

class EmailSignIn extends AuthEvent{}

class EmailSignUp extends AuthEvent{}