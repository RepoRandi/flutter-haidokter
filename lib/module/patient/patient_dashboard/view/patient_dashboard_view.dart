import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haidokter/core.dart';
import 'package:haidokter/module/patient/patient_dashboard/widget/patient_dashboard_search.dart';
import 'package:haidokter/shared/widget/navigation/custom_tab_navigation/custom_tab_navigation.dart';

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
          'Patien Dashboard',
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
        child: Container(
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
                      left: 20,
                      right: 20,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: 16, top: 16, right: 16, bottom: 10),
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
                            Row(
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
                            const SizedBox(
                              height: 12.0,
                            ),
                            PatientDashboardSearch(),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Container(
                                height: 300,
                                child: CustomTabNavigation(
                                  headers: [
                                    'Dokter',
                                    'Lab Test',
                                    'Tindakan Medis'
                                  ],
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: infoColor,
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: dangerColor,
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: pinkColor,
                                      ),
                                    ),
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
      ),
    );
  }
}
