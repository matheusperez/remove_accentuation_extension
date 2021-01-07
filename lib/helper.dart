import 'constants.dart';

class Helper {
  Helper._();
  static String removeDiacritics(String str) {
    final diacriticsMap = {};

    if (diacriticsMap.isEmpty) {
      for (var i = 0; i < accentuations.length; i++) {
        var letters = accentuations[i]['letters'];
        for (var j = 0; j < letters.length; j++) {
          diacriticsMap[letters[j]] = accentuations[i]['key'];
        }
      }
    }

    return str.replaceAllMapped(
      RegExp('[^\u0000-\u007E]', multiLine: true),
      (a) {
        return diacriticsMap[a.group(0)] != null
            ? diacriticsMap[a.group(0)]
            : a.group(0);
      },
    );
  }
}
