import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haidokter/core.dart';
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
          Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, top: 16, right: 16, bottom: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dokter Pilihan Anda',
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12.0),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/PGv8ZzG/me.jpg",
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'drg. Gunawan Rahrjo, Sp.KG',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              'Dokter Konservasi Gigi',
                              style:
                                  TextStyle(fontSize: 12.0, color: greyColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
