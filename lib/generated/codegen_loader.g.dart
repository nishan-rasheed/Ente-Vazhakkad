// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar_AE = {
  "welcome": "مرحبًا"
};
static const Map<String,dynamic> en_US = {
  "welcome": "This word in english",
  "ente_vazhakkad": "Ente Vazhakkad"
};
static const Map<String,dynamic> ml_IN = {
  "welcome": "ഈ വാചകം ഇംഗ്ലീഷിലാണ്",
  "ente_vazhakkad": "എന്റെ വാഴക്കാട്"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar_AE": ar_AE, "en_US": en_US, "ml_IN": ml_IN};
}
