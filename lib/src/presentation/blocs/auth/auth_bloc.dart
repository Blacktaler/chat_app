import 'package:bloc/bloc.dart';
import 'package:clean_architecture/src/presentation/views/chat_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<GoogleSignInn>((event, emit) async {
      
      GoogleSignIn googleSignIn = GoogleSignIn();
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final signin =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final token = signin.user!.uid;
      emit(AuthLoaded(token));
      Navigator.push(
        event.context,
        MaterialPageRoute(
          builder: (_) => ChatPage(id: token),
        ),
      );
      
    });
    on<EmailSignIn>((event, emit) {});

    on<EmailSignUp>((event, emit) {});
  }
}
