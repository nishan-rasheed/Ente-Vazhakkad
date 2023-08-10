import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
           FloatingActionButton(
            onPressed: (){
            context.setLocale(Locale('en', 'US'));

            print(context.locale.toString());
          },
          child: Icon(Icons.add),
          ),

          FloatingActionButton(onPressed: (){
            context.setLocale(Locale('ml', 'IN'));

            print(context.locale.toString());
          }),
        ],
      ),
      body: Center(
        child: Text("welcome".tr()),
      )
    );
  }
}