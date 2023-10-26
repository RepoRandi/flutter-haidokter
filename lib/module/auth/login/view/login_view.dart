import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haidokter/core.dart';

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
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                blueColor,
                darkBlueColor,
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mitra Resmi dari',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Image.asset(
                        "assets/icon/icon_kementerian_kesehatan.png",
                        width: 125.0,
                        height: 80.0,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/icon/icon_haidokter_transparent.png",
                    width: 500.0,
                    height: 400.0,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.smartphone,
                        color: blueColor,
                      ),
                      label: Text(
                        'Masuk dengan Nomor Ponsel',
                        style: TextStyle(color: blueColor),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Get.to(PatientMainNavigationView());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Masuk dengan Facebook',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: infoColor,
                      ),
                      onPressed: () {
                        Get.to(PatientMainNavigationView());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        MdiIcons.google,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Masuk dengan Google',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: dangerColor,
                      ),
                      onPressed: () {
                        Get.to(PatientMainNavigationView());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextButton(
                    child: const Text(
                      'Masuk Menggunakan Email',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
