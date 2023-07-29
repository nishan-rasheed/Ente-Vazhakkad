
import 'package:ente_vazhakkad/view/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localization/flutter_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Locale? _locale;

  changeLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['assets/i18n'];
    return Sizer(
      builder: (context, orientation, deviceType) {

      

        return MaterialApp(
          locale: _locale,
          localeResolutionCallback: (locale, supportedLocales) {
                if (supportedLocales.contains(locale)) {
                  return locale;
                }

                // define pt_BR as default when de language code is 'pt'
                if (locale?.languageCode == 'pt') {
                  return Locale('pt', 'BR');
                }

                // default language
                return Locale('en', 'US');
            },
          localizationsDelegates: [
            FlutterLocalization.instance.localizationsDelegates.first,
            FlutterLocalization.instance.localizationsDelegates.last,
            // FlutterLocalization.instance.localizationsDelegates.first,
            LocalJsonLocalization.delegate,
          ],
          supportedLocales: [
            Locale('pt', 'BR'),
            Locale('en', 'US'),
          ],
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        );
      }
    );
  }
}
