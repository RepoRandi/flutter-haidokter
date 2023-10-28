import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/patient_order_patient_data_bloc.dart';
import '../event/patient_order_patient_data_event.dart';
import '../state/patient_order_patient_data_state.dart';

class PatientOrderPatientDataView extends StatefulWidget {
  const PatientOrderPatientDataView({Key? key}) : super(key: key);

  @override
  State<PatientOrderPatientDataView> createState() =>
      _PatientOrderPatientDataViewState();
}

class _PatientOrderPatientDataViewState
    extends State<PatientOrderPatientDataView> {
  PatientOrderPatientDataBloc bloc = PatientOrderPatientDataBloc();

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
      child: BlocListener<PatientOrderPatientDataBloc,
          PatientOrderPatientDataState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderPatientDataBloc,
            PatientOrderPatientDataState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderPatientDataBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderPatientDataBloc bloc,
    PatientOrderPatientDataState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientOrderPatientData'),
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
            onPressed: () => bloc.add(PatientOrderPatientDataIncrementEvent()),
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
