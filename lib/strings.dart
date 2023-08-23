extension GreatString on String? {
  bool isNullorEmpty() {
    //Returns true if the String is Null or Empty
    if (this == null) {
      return true;
    }
    if (this!.isEmpty) {
      return true;
    }
    return false;
  }

  int? intParse() {
    if (this == null) {
      return null;
    }
    return int.tryParse(this!);
  }

  double? doubleParse() {
    if (this == null) {
      return null;
    }
    return double.tryParse(this!);
  }

  DateTime? dateTimeParse() {
    if (this == null) {
      return null;
    }
    return DateTime.tryParse(this!);
  }
}
