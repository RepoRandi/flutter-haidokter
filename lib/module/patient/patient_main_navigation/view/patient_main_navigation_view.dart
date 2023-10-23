import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haidokter/core.dart';
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
    return DefaultTabController(
      length: 3,
      initialIndex: state.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: state.selectedIndex,
          children: [
            PatientDashboardView(),
            Container(
              color: Colors.green,
            ),
            PatientProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.selectedIndex,
          onTap: (newIndex) {
            bloc.add(
                PatientMainNavigationUpdateIndexEvent(selectedIndex: newIndex));
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.doctor,
              ),
              label: 'Buat Janji',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.listBox,
              ),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
