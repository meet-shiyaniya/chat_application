import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';

class signupScreenProvider with foundation.ChangeNotifier {

  final List<String> _country = [
    "India",
    "South-africa",
    "America",
    "Bangladesh",
    "Shrilanka",
    "Netherland"
  ];

  final List<String> _state = [
    "Gujarat",
    "Goa",
    "Haryana",
    "Kerala",
    "Manipur",
    "Rajasthan"
  ];

  final List<String> _city = [
    "Surat",
    "Surendranagar",
    "Vapi",
    "Baroda",
    "Rajkot",
    "Bharuch"
  ];

  String? _selectedCountry = "India";
  String? _selectedState;
  String? _selectedCity;
  String? _selectedGender = "Prefer not to say";
  String _selectedDate = '';

  String get selectedDate => _selectedDate;
  List<String> get country => _country;
  List<String> get state => _state;
  List<String> get city => _city;
  String? get selectedCountry => _selectedCountry;
  String? get selectedState => _selectedState;
  String? get selectedCity => _selectedCity;
  String? get selectedGender => _selectedGender;

  // function for select country
  void selectCountry(String country) {
    _selectedCountry = country;
    notifyListeners(); // Notify widgets about the change
  }

  // function for select state
  void selectState(String state) {
    _selectedState = state;
    notifyListeners(); // Notify widgets about the change
  }

  // function for select city
  void selectCity(String city) {
    _selectedCity = city;
    notifyListeners(); // Notify widgets about the change
  }

  // function for select gender
  void selectGender(String gender) {
    _selectedGender = gender;
    notifyListeners(); // Notify widgets about the change
  }

  // function for update birth date
  void updateDate(String date) {
    _selectedDate = date;
    notifyListeners();
  }

  // Function to show date picker and update the provider
  Future<void> selectDate(BuildContext context, signupScreenProvider dateProvider) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      // Format the date and update the provider
      dateProvider.updateDate("${selectedDate.toLocal()}".split(' ')[0]);
    }
  }

}
