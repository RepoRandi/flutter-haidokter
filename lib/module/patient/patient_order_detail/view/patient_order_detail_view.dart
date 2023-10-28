import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/patient_order_detail_bloc.dart';
import '../event/patient_order_detail_event.dart';
import '../state/patient_order_detail_state.dart';

class PatientOrderDetailView extends StatefulWidget {
  const PatientOrderDetailView({Key? key}) : super(key: key);

  @override
  State<PatientOrderDetailView> createState() => _PatientOrderDetailViewState();
}

class _PatientOrderDetailViewState extends State<PatientOrderDetailView> {
  PatientOrderDetailBloc bloc = PatientOrderDetailBloc();

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
      child: BlocListener<PatientOrderDetailBloc, PatientOrderDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderDetailBloc, PatientOrderDetailState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderDetailBloc bloc,
    PatientOrderDetailState state,
  ) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(PatientOrderDetailIncrementEvent()),
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
