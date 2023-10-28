import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haidokter/core.dart';

class PatientOrderView extends StatefulWidget {
  const PatientOrderView({Key? key}) : super(key: key);

  @override
  State<PatientOrderView> createState() => _PatientOrderViewState();
}

class _PatientOrderViewState extends State<PatientOrderView> {
  PatientOrderBloc bloc = PatientOrderBloc();

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
      child: BlocListener<PatientOrderBloc, PatientOrderState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderBloc, PatientOrderState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderBloc bloc,
    PatientOrderState state,
  ) {
    return Scaffold(
      body: StepNavigation(
        initialIndex: 1,
        navigations: [
          "Pilih Dokter",
          "Data Pemesanan",
          "Isi Data Pasien",
          "Pembayaran"
        ],
        pages: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          PatientOrderDetailView(),
          PatientOrderPatientDataView(),
          PatientOrderPaymentView(),
        ],
      ),
    );
  }
}
