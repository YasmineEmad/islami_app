import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    return Column(
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
            child: Center(child: Image.asset("assets/images/sebhaLogo.png",))),
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
              color: MyTheme.primary.withOpacity(0.6)
            ),
            child: Text("$counter",style: Theme.of(context).textTheme.bodyLarge,)),
        Container(
          height: 50,
            width: 137,
            margin: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: MyTheme.primary,
            ),
            child: Text(azkar[index],style: Theme.of(context).textTheme.bodySmall),)
      ]
    );
  }
}
