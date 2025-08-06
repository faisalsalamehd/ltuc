import 'package:flutter/material.dart';
import 'package:ltuc/core/translations/locale_provider.dart';

Locale currentLocale = Locale('en');
String languageCode = '';
LocaleProvider localeProvider = LocaleProvider();
String Function(String) tr = (String key) => key;
double screenWidth = 0.0;
double screenHeight = 0.0;
