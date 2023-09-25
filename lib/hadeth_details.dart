import 'package:flutter/material.dart';

import 'models/hadeth_model.dart';
import 'my_theme.dart';

class HadethDetails extends StatelessWidget {
static const String routeName = "hadethDetails";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(
        children: [
          Image.asset('assets/images/background.png',width:double.infinity,fit: BoxFit.fill,),
          Scaffold(
            appBar: AppBar(
              title: Text(args.title,style: Theme.of(context).textTheme.bodyLarge,),
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
                  child: Text(args.content[index],textAlign: TextAlign.center,),
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
