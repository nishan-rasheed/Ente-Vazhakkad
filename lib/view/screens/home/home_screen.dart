import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        final myApp = context.findAncestorStateOfType<MyAppState>()!;
         myApp.changeLocale(locale == Locale('pt', 'BR') ? Locale('en', 'US') : Locale('pt', 'BR'));
      }),
      body: Center(
        child: Text('welcome-text'.i18n()),
      )
    );
  }
}