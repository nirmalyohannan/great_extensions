extension GreatDateTime on DateTime {
  String get toDDMonthYY {
    List<String> months = [
      '',
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'June',
      'July',
      'Aug',
      'Sept',
      'Oct',
      'Nov',
      'Dec'
    ];
    String day = this.day.toString().padLeft(2, '0');
    String month = months[this.month];
    String year = this.year.toString();
    return '$day $month $year';
  }

  String get toYYMMDD {
    String year = this.year.toString().padLeft(4, '0');
    String month = this.month.toString().padLeft(2, '0');
    String day = this.day.toString().padLeft(2, '0');
    return '$year-$month-$day';
  }

  String get toDDMMYY {
    String year = this.year.toString().padLeft(4, '0');
    String month = this.month.toString().padLeft(2, '0');
    String day = this.day.toString().padLeft(2, '0');
    return '$day-$month-$year';
  }
}
