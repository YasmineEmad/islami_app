import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
       initialRoute: HomeScreen.routeName,
      routes: {
         HomeScreen.routeName:(context) => HomeScreen(),
        SuraDetails.routeName:(context) => SuraDetails()
      },
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
    );
  }
}

