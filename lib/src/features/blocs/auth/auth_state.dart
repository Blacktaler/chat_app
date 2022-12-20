part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoaded extends AuthState{
  String token;
  AuthLoaded(this.token);
}
