import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';
class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter =0;
  int index =0;
   List<String> azkar = ["سبحان الله","الحمدلله","لا اله الا الله","الله اكبر"];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children:[
          InkWell(
            onTap: () {
              setState(() {
                counter++;
                if(counter == 34){
                  counter =0;
                  if(index <=2){
                    index ++;
                  }else{
                    index =0;
                  }
                }
              });
            },
              child: Center(child:provider.theme == ThemeMode.light ? Image.asset("assets/images/sebhaLogo.png",):
              Image.asset("assets/images/dark_sebha.png",))),
          Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 20),
            child: Text(AppLocalizations.of(context)!.numberOfPraises,style: Theme.of(context).textTheme.bodyMedium,),
          ),
          Container(
            alignment: Alignment.center,
            height: 80,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: provider.theme == ThemeMode.light? MyTheme.primary.withOpacity(0.6): MyTheme.darkPrimary
              ),
              child: Text("$counter",style: Theme.of(context).textTheme.bodyLarge,)),
          Container(
            height: 50,
              width: 137,
              margin: EdgeInsets.all(30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: provider.theme == ThemeMode.light? MyTheme.primary: MyTheme.yellowColor,
              ),
              child: Text(azkar[index],
                  style: provider.theme == ThemeMode.light ?Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white):
                  Theme.of(context).textTheme.bodyMedium!.copyWith(color: MyTheme.darkPrimary)),)
        ]
      ),
    );
  }
}
