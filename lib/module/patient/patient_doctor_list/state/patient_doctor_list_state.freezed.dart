// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_doctor_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientDoctorListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<dynamic> get categories => throw _privateConstructorUsedError;
  set categories(List<dynamic> value) => throw _privateConstructorUsedError;
  List<dynamic> get doctorList => throw _privateConstructorUsedError;
  set doctorList(List<dynamic> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientDoctorListStateCopyWith<PatientDoctorListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDoctorListStateCopyWith<$Res> {
  factory $PatientDoctorListStateCopyWith(PatientDoctorListState value,
          $Res Function(PatientDoctorListState) then) =
      _$PatientDoctorListStateCopyWithImpl<$Res, PatientDoctorListState>;
  @useResult
  $Res call({int counter, List<dynamic> categories, List<dynamic> doctorList});
}

/// @nodoc
class _$PatientDoctorListStateCopyWithImpl<$Res,
        $Val extends PatientDoctorListState>
    implements $PatientDoctorListStateCopyWith<$Res> {
  _$PatientDoctorListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? doctorList = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      doctorList: null == doctorList
          ? _value.doctorList
          : doctorList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientDoctorListStateImplCopyWith<$Res>
    implements $PatientDoctorListStateCopyWith<$Res> {
  factory _$$PatientDoctorListStateImplCopyWith(
          _$PatientDoctorListStateImpl value,
          $Res Function(_$PatientDoctorListStateImpl) then) =
      __$$PatientDoctorListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, List<dynamic> categories, List<dynamic> doctorList});
}

/// @nodoc
class __$$PatientDoctorListStateImplCopyWithImpl<$Res>
    extends _$PatientDoctorListStateCopyWithImpl<$Res,
        _$PatientDoctorListStateImpl>
    implements _$$PatientDoctorListStateImplCopyWith<$Res> {
  __$$PatientDoctorListStateImplCopyWithImpl(
      _$PatientDoctorListStateImpl _value,
      $Res Function(_$PatientDoctorListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? doctorList = null,
  }) {
    return _then(_$PatientDoctorListStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      doctorList: null == doctorList
          ? _value.doctorList
          : doctorList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$PatientDoctorListStateImpl implements _PatientDoctorListState {
  _$PatientDoctorListStateImpl(
      {this.counter = 0,
      this.categories = const [
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
      ],
      this.doctorList = const [
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
      ]});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<dynamic> categories;
  @override
  @JsonKey()
  List<dynamic> doctorList;

  @override
  String toString() {
    return 'PatientDoctorListState(counter: $counter, categories: $categories, doctorList: $doctorList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDoctorListStateImplCopyWith<_$PatientDoctorListStateImpl>
      get copyWith => __$$PatientDoctorListStateImplCopyWithImpl<
          _$PatientDoctorListStateImpl>(this, _$identity);
}

abstract class _PatientDoctorListState implements PatientDoctorListState {
  factory _PatientDoctorListState(
      {int counter,
      List<dynamic> categories,
      List<dynamic> doctorList}) = _$PatientDoctorListStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  List<dynamic> get categories;
  set categories(List<dynamic> value);
  @override
  List<dynamic> get doctorList;
  set doctorList(List<dynamic> value);
  @override
  @JsonKey(ignore: true)
  _$$PatientDoctorListStateImplCopyWith<_$PatientDoctorListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
