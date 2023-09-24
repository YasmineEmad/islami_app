import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(lines.isEmpty){
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset('assets/images/background.png',width:double.infinity,fit: BoxFit.fill,),
       Scaffold(
        appBar: AppBar(
          title: Text(args.name,style: Theme.of(context).textTheme.bodyLarge,),
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
               child: Text("${lines[index]} (${index+1})",textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
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
