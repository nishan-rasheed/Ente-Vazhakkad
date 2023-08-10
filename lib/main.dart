
import 'package:easy_localization/easy_localization.dart';
import 'package:ente_vazhakkad/view/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'generated/codegen_loader.g.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales:const [
        Locale('en', 'US'),
        Locale('ml', 'IN'),
        Locale('ar', 'AE'),
      ],
    path: 'assets/trans',
    assetLoader: const CodegenLoader(),
    fallbackLocale: const Locale('en', 'US'),
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            appBarTheme: AppBarTheme(color: Color(0xFF000000)),
          ),
          home: HomeScreen(),
        );
  }
}
