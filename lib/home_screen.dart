import 'package:flutter/material.dart';
import 'package:islami_app/tabs/ahadeth.dart';
import 'package:islami_app/tabs/quran.dart';
import 'package:islami_app/tabs/radio.dart';
import 'package:islami_app/tabs/sebha.dart';
import 'package:islami_app/tabs/settings.dart';
import 'my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index =0;
  List<Widget> tabs =[RadioTab(),SebhaTab(),AhadethTab(),QuranTab(),SettingsTab()];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Image.asset('assets/images/background.png',width:double.infinity,fit: BoxFit.fill,),
        Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami,style: Theme.of(context).textTheme.bodyLarge,),
        ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            currentIndex: index,
            backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio
                ,backgroundColor: MyTheme.primary,),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.sebha,backgroundColor: MyTheme.primary,),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label:AppLocalizations.of(context)!.ahadeth ,backgroundColor: MyTheme.primary,),
              BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/quran.png'))
                ,label:AppLocalizations.of(context)!.quran,backgroundColor: MyTheme.primary,),
              BottomNavigationBarItem(icon:Icon(Icons.settings)
                ,label:AppLocalizations.of(context)!.settings,backgroundColor: MyTheme.primary,),
            ],
          ),
          body:tabs[index],
      ),]
    );
  }
}
