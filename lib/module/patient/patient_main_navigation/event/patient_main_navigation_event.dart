abstract class PatientMainNavigationEvent {}

class PatientMainNavigationUpdateIndexEvent extends PatientMainNavigationEvent {
  final int selectedIndex;
  PatientMainNavigationUpdateIndexEvent({required this.selectedIndex});
}
