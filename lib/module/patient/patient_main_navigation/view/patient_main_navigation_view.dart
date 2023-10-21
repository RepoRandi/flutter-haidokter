import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/patient_main_navigation_bloc.dart';
import '../event/patient_main_navigation_event.dart';
import '../state/patient_main_navigation_state.dart';

class PatientMainNavigationView extends StatefulWidget {
  const PatientMainNavigationView({Key? key}) : super(key: key);

  @override
  State<PatientMainNavigationView> createState() =>
      _PatientMainNavigationViewState();
}

class _PatientMainNavigationViewState extends State<PatientMainNavigationView> {
  PatientMainNavigationBloc bloc = PatientMainNavigationBloc();

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
      child:
          BlocListener<PatientMainNavigationBloc, PatientMainNavigationState>(
        listener: (context, state) {},
        child:
            BlocBuilder<PatientMainNavigationBloc, PatientMainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<PatientMainNavigationBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientMainNavigationBloc bloc,
    PatientMainNavigationState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientMainNavigation'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(PatientMainNavigationIncrementEvent()),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
