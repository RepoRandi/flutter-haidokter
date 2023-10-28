import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haidokter/core.dart';
import 'package:haidokter/module/patient/patient_doctor_detail/widget/doctor_card.dart';
import 'package:haidokter/module/patient/patient_doctor_detail/widget/doctor_schedule_card.dart';
import 'package:haidokter/module/patient/patient_doctor_detail/widget/expandable_doctor_card.dart';
import 'package:haidokter/module/patient/patient_doctor_detail/widget/expandable_educational_background.dart';
import 'package:haidokter/module/patient/patient_doctor_detail/widget/expandable_medical_treatment_card.dart';
import 'package:haidokter/module/patient/patient_doctor_detail/widget/expandable_pratical_experience_card.dart';

class PatientDoctorDetailView extends StatefulWidget {
  final Map doctor;
  const PatientDoctorDetailView({Key? key, required this.doctor})
      : super(key: key);

  @override
  State<PatientDoctorDetailView> createState() =>
      _PatientDoctorDetailViewState();
}

class _PatientDoctorDetailViewState extends State<PatientDoctorDetailView> {
  PatientDoctorDetailBloc bloc = PatientDoctorDetailBloc();

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
      child: BlocListener<PatientDoctorDetailBloc, PatientDoctorDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientDoctorDetailBloc, PatientDoctorDetailState>(
          builder: (context, state) {
            final bloc = context.read<PatientDoctorDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientDoctorDetailBloc bloc,
    PatientDoctorDetailState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: const Text(
          'Profile Dokter',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          const Icon(
            Icons.share,
            size: 24.0,
          ),
          const SizedBox(
            width: 16.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DoctorCard(
              photoUrl: '${widget.doctor['photo']}',
              doctorName: '${widget.doctor['doctor_name']}',
              specialization: '${widget.doctor['specialization']}',
              patientCount: '${widget.doctor['patient_count']} pasien ',
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
              child: DoctorScheduleCard(
                title: 'Lokasi & Jadwal Praktik Terdekat',
                hospitalPhotoUrl: '${widget.doctor['hospital_photo']}',
                hospitalName: '${widget.doctor['hospital']}',
                address: '${widget.doctor['address']}',
                distanceInKm: '${widget.doctor['location_in_km']}',
                consultationFee: '${widget.doctor['price']}',
                schedules: [
                  'Senin, 1 Oktober 2023',
                  'Selasa, 2 Oktober 2023',
                  'Rabu, 3 Oktober 2023'
                ],
                onScheduleTapped: () {
                  Get.to(PatientOrderView());
                },
                onSeeAllTapped: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
              child: ExpandableDoctorCard(
                title: 'Profil Dokter',
                collapsedText:
                    '${widget.doctor['doctor_name']} adalah Dokter Spesialis ${widget.doctor['specialization']} yang berpraktek di ${widget.doctor['hospital']}',
                expandedText:
                    '${widget.doctor['doctor_name']} adalah Dokter Spesialis ${widget.doctor['specialization']} yang berpraktek di ${widget.doctor['hospital']}',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
              child: ExpandableMedicalTreatmentCard(
                title: 'Tindakan Medis',
                items: [
                  'Fluoride Treatment',
                  'Foto Panoramic Gigi',
                  'Pembersihan Karang Gigi',
                  'Pemeriksaan Gusi',
                  'Perawatan Saluran Akar',
                  'Pemasangan Behel',
                  'Pemutihan Gigi',
                  'Cabut Gigi',
                  'Pemeriksaan Rontgen Gigi',
                  'Perawatan Gigi Palsu',
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
              child: ExpandablePraticalExperienceCard(
                title: 'Pengalaman Praktik',
                content:
                    '${widget.doctor['specialization']} - ${widget.doctor['hospital']}',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
              child: ExpandableEducationalBackgroundCard(
                title: 'Riwayat Pendidikan',
                content:
                    'Sp.KG - Spesialis Konservasi Gigi - Universitas Brawijaya',
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.all(18),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: orangeColor,
          ),
          child: const Text('Buat Janji Konsultasi'),
          onPressed: () {},
        ),
      ),
    );
  }
}
