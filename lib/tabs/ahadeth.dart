import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../models/hadeth_model.dart';
import '../my_theme.dart';

class AhadethTab extends StatefulWidget {
  const AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadethList = [];
  @override
  Widget build(BuildContext context) {
    if(ahadethList.isEmpty){
      loadHadeth();
    }
    return Column(children: [
      Image.asset("assets/images/ahadeth_image.png"),
      Divider(
        thickness: 2,
        color: MyTheme.primary,
      ),
      Text(
        AppLocalizations.of(context)!.ahadeth,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      Divider(
        thickness: 2,
        color: MyTheme.primary,
      ),
      Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,arguments: ahadethList[index]);
                },
                  child: Text(ahadethList[index].title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyMedium));
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                color: MyTheme.primary,
                indent: 30,
                endIndent: 30,
              );
            },
            itemCount: ahadethList.length),
      )
    ]);
  }

  void loadHadeth() async {
    String ahadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allAhadeth = ahadeth.split("#");
    for (int i = 0; i < allAhadeth.length; i++) {
      String hadeth = allAhadeth[i];
      List<String> hadethLines = hadeth.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      HadethModel hadethModel = HadethModel(title, content);
      setState(() {ahadethList.add(hadethModel);});

    }

  }
}
