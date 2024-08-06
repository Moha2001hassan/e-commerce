import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../../data/repositories/auth_repository.dart';

part 'signup_state.dart';


class SignupCubit extends Cubit<SignupState> {
  final AuthRepository _authRepository;

  SignupCubit(this._authRepository) : super(SignupInitial());

  Future<void> signup(String email, String password) async {
    emit(SignupLoading());
    try {
      await _authRepository.signup(email, password);
      emit(SignupSuccess());
    } catch (e) {
      emit(SignupFailure(e.toString()));
    }
  }
}
