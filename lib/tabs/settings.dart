import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  String? _selectedLanguageValue;
  String? _selectedModeValue;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    List<String> languages = [AppLocalizations.of(context)!.english, AppLocalizations.of(context)!.arabic];
    _selectedLanguageValue = provider.local == 'en' ? languages[0] : languages[1];
    List<String> modes = [AppLocalizations.of(context)!.lightMode, AppLocalizations.of(context)!.darkMode];
    _selectedModeValue = modes[0];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        DropdownButtonFormField(
          padding: const EdgeInsets.all(8.0),
          value: _selectedLanguageValue,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
          ),
          onChanged: (value) {
            setState(() {
              if(value == languages[0]) {
                provider.changeLanguage("en");
              }else{
                provider.changeLanguage("ar");
              }
              _selectedLanguageValue = value;
            });
          },
          items: languages.map((String val) {
            return DropdownMenuItem(
              value: val,
              child: Text(
                val,
              ),
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 8,left: 18,right: 18),
          child: Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        DropdownButtonFormField(
          padding: const EdgeInsets.all(8.0),
          value: _selectedModeValue,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onChanged: (value) {
            setState(() {
              _selectedModeValue = value;
            });
          },
          items: modes.map((String val) {
            return DropdownMenuItem(
              value: val,
              child: Text(
                val,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
