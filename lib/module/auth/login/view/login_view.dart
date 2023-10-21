import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login_bloc.dart';
import '../event/login_event.dart';
import '../state/login_state.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginBloc bloc = LoginBloc();

  @override
  void initState() {
    bloc.initState();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {},
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            final bloc = context.read<LoginBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    LoginBloc bloc,
    LoginState state,
  ) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Counter: ${state.counter}',
                style: const TextStyle(fontSize: 24),
              ),
              IconButton(
                onPressed: () => bloc.add(LoginIncrementEvent()),
                icon: const Icon(
                  Icons.add,
                  size: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
