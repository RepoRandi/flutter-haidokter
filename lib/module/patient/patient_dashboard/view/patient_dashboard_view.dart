import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/patient_dashboard_bloc.dart';
import '../event/patient_dashboard_event.dart';
import '../state/patient_dashboard_state.dart';

class PatientDashboardView extends StatefulWidget {
  const PatientDashboardView({Key? key}) : super(key: key);

  @override
  State<PatientDashboardView> createState() => _PatientDashboardViewState();
}

class _PatientDashboardViewState extends State<PatientDashboardView> {
  PatientDashboardBloc bloc = PatientDashboardBloc();

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
      child: BlocListener<PatientDashboardBloc, PatientDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientDashboardBloc, PatientDashboardState>(
          builder: (context, state) {
            final bloc = context.read<PatientDashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientDashboardBloc bloc,
    PatientDashboardState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientDashboard'),
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
            onPressed: () => bloc.add(PatientDashboardIncrementEvent()),
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
