import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/patient_order_payment_bloc.dart';
import '../event/patient_order_payment_event.dart';
import '../state/patient_order_payment_state.dart';

class PatientOrderPaymentView extends StatefulWidget {
  const PatientOrderPaymentView({Key? key}) : super(key: key);

  @override
  State<PatientOrderPaymentView> createState() =>
      _PatientOrderPaymentViewState();
}

class _PatientOrderPaymentViewState extends State<PatientOrderPaymentView> {
  PatientOrderPaymentBloc bloc = PatientOrderPaymentBloc();

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
      child: BlocListener<PatientOrderPaymentBloc, PatientOrderPaymentState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderPaymentBloc, PatientOrderPaymentState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderPaymentBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderPaymentBloc bloc,
    PatientOrderPaymentState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientOrderPayment'),
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
            onPressed: () => bloc.add(PatientOrderPaymentIncrementEvent()),
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
