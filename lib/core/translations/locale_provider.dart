import 'package:flutter/material.dart';
import 'package:ltuc/core/translations/app_translations.dart';

class LocaleProvider extends ChangeNotifier {
  Locale locale = const Locale('en'); // اللغة الافتراضية

  LocaleProvider({this.locale = const Locale('en')});
  void setLocale(Locale newLocale) {
    // if (!L10n.supportedLocales.contains(newLocale)) return;

    locale = newLocale;
    notifyListeners();
  }

  void clearLocale() {
    locale = const Locale('en');
    notifyListeners();
  }

  String translate(String key) {
    return AppTranslations.translations[locale.languageCode]?[key] ??
        key;
  }
}

class L10n {
  static final all = [const Locale('en'), const Locale('ar')];

  static bool supportedLocalesContains(Locale locale) {
    return all.contains(locale);
  }

  static List<Locale> get supportedLocales => all;
}
