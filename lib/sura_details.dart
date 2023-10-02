import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/models/sura_model.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(lines.isEmpty){
      loadFile(args.index);
    }
    return Stack(
      children: [
        provider.theme == ThemeMode.light?
        Image.asset('assets/images/background.png',width:double.infinity,fit: BoxFit.fill,):
        Image.asset('assets/images/bg.png',width:double.infinity,fit: BoxFit.fill,),
       Scaffold(
        appBar: AppBar(
          title: Text(args.name,
            style: provider.theme == ThemeMode.light? Theme.of(context).textTheme.bodyLarge:
            Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyTheme.yellowColor),),

        ),
         body: Card(
           color:provider.theme == ThemeMode.light? Colors.white: MyTheme.darkPrimary,
           elevation: 30,
           margin: EdgeInsets.all(20),
           shape: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
           ),
           child: ListView.builder(itemBuilder:(context, index) {
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("${lines[index]} (${index+1})",textAlign: TextAlign.center,textDirection: TextDirection.rtl,
               style: Theme.of(context).textTheme.bodySmall),
             );
           },
             itemCount: lines.length,
           ),
         ),
      ),
      ]
    );
  }

  void loadFile(int index) async{
    String sura = await rootBundle.loadString("assets/files/${index+1}.txt");
    setState(() {
      lines = sura.split("\n");
    });
  }
}
