import 'package:application22/features/logic/bloc/login_event.dart.dart';
import 'package:application22/features/logic/bloc/login_state.dart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState(email: '', password: '')) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<LoginSubmitted>((event, emit) {
      print('Login with email: ${state.email}, password: ${state.password}');
    });
  }
}
