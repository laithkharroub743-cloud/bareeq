String toEnglishDigits(String input) {
  const easternArabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

  String result = input;

  for (int i = 0; i < 10; i++) {
    result = result.replaceAll(easternArabic[i], english[i]);
  }
  String cleaned = result.replaceAll(RegExp(r'[\s\-\(\)]'), '');
  return cleaned.replaceFirst(RegExp(r'^(?:\+966|00966|966)'), '0');
}
