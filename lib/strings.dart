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
}
