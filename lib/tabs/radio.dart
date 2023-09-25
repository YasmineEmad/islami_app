import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100,bottom: 30),
          child: Image.asset("assets/images/radio_image.png"),
        ),
        Text("إذاعة القرأن الكريم",style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Image.asset("assets/images/play_icons.png"),
        ),
      ],
    );
  }
}
