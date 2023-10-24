import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haidokter/core.dart';

class PatientDoctorListView extends StatefulWidget {
  const PatientDoctorListView({Key? key}) : super(key: key);

  @override
  State<PatientDoctorListView> createState() => _PatientDoctorListViewState();
}

class _PatientDoctorListViewState extends State<PatientDoctorListView> {
  PatientDoctorListBloc bloc = PatientDoctorListBloc();

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
      child: BlocListener<PatientDoctorListBloc, PatientDoctorListState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientDoctorListBloc, PatientDoctorListState>(
          builder: (context, state) {
            final bloc = context.read<PatientDoctorListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientDoctorListBloc bloc,
    PatientDoctorListState state,
  ) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.categories.length,
                    itemBuilder: (context, index) {
                      var category = state.categories[index];
                      bool selected = index == 0;

                      return Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              width: 3,
                              color: selected ? infoColor : Colors.transparent,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            category,
                            style: TextStyle(
                              color: selected ? infoColor : Colors.grey,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.0, color: Colors.grey[100]!),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 11),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 24.0,
                      color: infoColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: state.doctorList.length,
              physics: const ScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                var doctor = state.doctorList[index];
                return Container(
                  margin: EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                              '${doctor['photo']}',
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${doctor['doctor_name']}',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.medication_liquid_sharp,
                                      size: 20.0,
                                      color: greyColor,
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '${doctor['specialization']}',
                                      style: TextStyle(color: greyColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.maps_home_work_outlined,
                                      size: 20.0,
                                      color: greyColor,
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '${doctor['address']}',
                                      style: TextStyle(color: greyColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20.0,
                                      color: greyColor,
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '${doctor['location_in_km']} km dari anda',
                                      style: TextStyle(color: greyColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${doctor['patient_count']} pasien ',
                                      style: TextStyle(
                                          fontSize: 12, color: infoColor),
                                    ),
                                    Text(
                                      'telah buat janji dengan dokter ini',
                                      style: TextStyle(
                                          fontSize: 12, color: greyColor),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            MdiIcons.calendar,
                            size: 20.0,
                            color: greyColor,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Jadwal Berikutnya: ${doctor['next_schedule']}',
                            style: TextStyle(color: greyColor),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Biaya Konsultasi',
                                style:
                                    TextStyle(fontSize: 12, color: greyColor),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Rp. ${doctor['price']}',
                                style:
                                    TextStyle(fontSize: 16, color: orangeColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ulasan Dokter',
                                style:
                                    TextStyle(fontSize: 12, color: greyColor),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    size: 20.0,
                                    color: infoColor,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '100%',
                                        style: TextStyle(
                                            fontSize: 16, color: infoColor),
                                      ),
                                      const SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        '(19)',
                                        style: TextStyle(
                                            fontSize: 12, color: greyColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: orangeColor,
                            ),
                            child: const Text('Buat Janji'),
                            onPressed: () {
                              Get.to(PatientDoctorDetailView(
                                doctor: doctor,
                              ));
                            },
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 350.0,
          ),
        ],
      ),
    );
  }
}
