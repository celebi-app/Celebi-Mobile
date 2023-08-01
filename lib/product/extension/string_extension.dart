extension DateExtension on String? {
  String get formatToDDMMYYYY {
    if (this == null) return "";
    List<String> dateParts = this!.split('T');
    String datePart = dateParts[0];
    List<String> dateValues = datePart.split('-');
    String year = dateValues[0];
    String month = dateValues[1];
    String day = dateValues[2];
    String formattedDate = "$day.$month.$year";
    return formattedDate;
  }
}
