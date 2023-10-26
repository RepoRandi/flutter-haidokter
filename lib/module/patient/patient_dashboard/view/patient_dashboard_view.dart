import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haidokter/core.dart';

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'HAIDOKTER',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Row(
            children: [
              const Badge(
                label: Text(
                  '7',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(
                  Icons.email_outlined,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          blueColor,
                          lightColor,
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 16,
                    right: 16,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 16, right: 16),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: pinkColor,
                                  child: Icon(
                                    MdiIcons.calendar,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12.0,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Buat Janji Konsultasi',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'Proses singkat, Bayar Cepat dan tanpa antri',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: PatientDashboardSearch(),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height,
                              child: CustomTabNavigation(
                                headers: [
                                  'Dokter',
                                  'Lab Test',
                                  'Medical Treatment'
                                ],
                                children: [
                                  PatientDoctorListView(),
                                  PatientLabTestListView(),
                                  PatientMedicalTreatmentListView()
                                ],
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
