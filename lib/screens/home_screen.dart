import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:local_app/application_localization.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // the property below is used to get the name of the language
  String? languageName;

  Text returnMessage(String language) {
    if (language == 'English') {
      return const Text(
        "Hello World",
      );
    } else if (language == 'Spanish') {
      return const Text(
        "¡Hola Mundo",
      );
    } else if (language == 'Urdu') {
      return const Text(
        "مرحبا بالعالم",
      );
    } else {
      return const Text(
        "Hello World",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            returnMessage(languageName.toString()),
            DropdownButton<String>(
              value: languageName ?? 'English',
              items: <String>[
                'English',
                'Spanish',
                'Urdu',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  languageName = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
