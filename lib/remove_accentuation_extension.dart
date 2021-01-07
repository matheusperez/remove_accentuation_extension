library remove_accentuation_extension;

import 'helper.dart';

extension AccentuationExt on String {
  String get remove => Helper.removeDiacritics(this);
}
