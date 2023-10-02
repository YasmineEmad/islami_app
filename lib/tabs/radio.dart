import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';


class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100,bottom: 30),
            child: Image.asset("assets/images/radio_image.png"),
          ),
          Text(AppLocalizations.of(context)!.quranRadio,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.only(top: 60,bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.flip(
                flipX : provider.local == 'en'? true: false,
              child: Icon(Icons.skip_next,)),
              Icon(Icons.play_arrow),
              Transform.flip(
                flipX : provider.local == 'ar' ? true: false,
             child: Icon(Icons.skip_next)
              ),
            ],
            )
          ),
        ],
      ),
    );
  }
}
