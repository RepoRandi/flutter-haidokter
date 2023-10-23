import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_doctor_list_state.freezed.dart';

@unfreezed
class PatientDoctorListState with _$PatientDoctorListState {
  factory PatientDoctorListState({
    @Default(0) int counter,
    @Default([
      'Semua',
      'Umum',
      'Kandungan',
      'Anak',
      'Jantung',
      'Kulit dan Kelamin',
      'Endokrin',
      'Pencernaan',
      'Darah',
      'Ginjal',
      'Saraf',
      'Kanker',
      'Mata',
      'Bedah Tulang',
      'THT',
      'Psikiatri',
      'Paru-paru',
      'Rematik',
      'Urologi'
    ])
    List categories,
    @Default([
      {
        "photo":
            "https://media.istockphoto.com/id/1270790502/photo/medical-concept-of-indian-beautiful-female-doctor-with-note-book.webp?b=1&s=170667a&w=0&k=20&c=1SeKJzjB9loT2tW4wzxQ5S-iNMz31-iarSLka2j1hyw=",
        "doctor_name": "Dr. Aisyah Putri, M.Biomed (A.Md.Keb)",
        "specialization": "Dokter Umum",
        "address": "Jl. Sehat No. 1, Jakarta",
        "location_in_km": 3.2,
        "patient_count": 200,
        "next_schedule": "2023-11-01 09:00:00"
      },
      {
        "photo":
            "https://media.istockphoto.com/id/1327956985/photo/shot-of-a-mature-men-doctor-at-his-clinic.webp?b=1&s=170667a&w=0&k=20&c=c7ovj_AOxoAHISfwu8e6noa7coU3-tAgp8yEWXYHRE0=",
        "doctor_name": "Dr. Budi Santoso, Sp.JP(K), FIHA",
        "specialization": "Dokter Jantung",
        "address": "Jl. Kardiologi No. 21, Yogyakarta",
        "location_in_km": 5.0,
        "patient_count": 170,
        "next_schedule": "2023-11-02 10:30:00"
      },
      {
        "photo":
            "https://media.istockphoto.com/id/1301595548/photo/female-doctor-stock-photo.webp?b=1&s=170667a&w=0&k=20&c=PuETMPqopkx5YAh17Q9IkPkfFqLAIfa4sxEVQFqrAZI=",
        "doctor_name": "Dr. Cinta Ratu, Sp.A(K)",
        "specialization": "Dokter Anak",
        "address": "Jl. Ceria No. 33, Surabaya",
        "location_in_km": 7.5,
        "patient_count": 220,
        "next_schedule": "2023-11-03 14:00:00"
      },
      {
        "photo":
            "https://images.unsplash.com/photo-1537368910025-700350fe46c7?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8ZG9jdG9yfGVufDB8fDB8fHww",
        "doctor_name": "Dr. Dedi Mulyadi, Sp.THT-KL",
        "specialization": "Dokter THT",
        "address": "Jl. Telinga No. 44, Bandung",
        "location_in_km": 2.8,
        "patient_count": 150,
        "next_schedule": "2023-11-04 11:00:00"
      },
      {
        "photo":
            "https://media.istockphoto.com/id/1292015214/photo/portrait-female-doctor-stock-photo.webp?b=1&s=170667a&w=0&k=20&c=ZytFfGECNdiYIgNN9VPXw6Q0xF0vzTlSQVYGMmYEeRM=",
        "doctor_name": "Dr. Eka Wahyu, Sp.M",
        "specialization": "Dokter Mata",
        "address": "Jl. Pandang No. 56, Medan",
        "location_in_km": 6.0,
        "patient_count": 180,
        "next_schedule": "2023-11-05 15:00:00"
      }
    ])
    List doctorList,
  }) = _PatientDoctorListState;
}
