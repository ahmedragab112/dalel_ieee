// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  FirebaseAuth auth = FirebaseAuth.instance;
  AuthCubit() : super(AuthInitial());

  Future<void> signUp(String emailAddress, String password) async {
    try {
      emit(AuthLoading());
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      emit(AuthSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(const AuthFailure(massage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(const AuthFailure(
            massage: 'The account already exists for that email.'));
      }else{
         emit( AuthFailure(massage: e.message!));
      }
    } catch (e) {
      log(e.toString());
      emit(AuthFailure(massage: e.toString()));
    }
  }
}
