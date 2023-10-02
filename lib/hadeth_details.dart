import 'package:flutter/material.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

import 'models/hadeth_model.dart';
import 'my_theme.dart';

class HadethDetails extends StatelessWidget {
static const String routeName = "hadethDetails";
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
        children: [
          provider.theme == ThemeMode.light?
          Image.asset('assets/images/background.png',width:double.infinity,fit: BoxFit.fill,):
          Image.asset('assets/images/bg.png',width:double.infinity,fit: BoxFit.fill,),
          Scaffold(
            appBar: AppBar(
              title: Text(args.title,
                style: provider.theme == ThemeMode.light? Theme.of(context).textTheme.bodyLarge:
                Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyTheme.yellowColor),),
            ),
            body: Card(
              elevation: 30,
              margin: EdgeInsets.all(20),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: MyTheme.primary)
              ),
              child: ListView.builder(itemBuilder:(context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(args.content[index],textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodySmall),
                );
              },
                itemCount: args.content.length,
              ),
            ),
          ),
        ]
    );
  }
}
