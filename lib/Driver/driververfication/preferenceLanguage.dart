import 'package:epc/common/gradientColor.dart';
import 'package:epc/common/properties.dart';
import 'package:epc/provider/UserDataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum languagetype {
  English,
  Hindi,
  French,
  German,
  Spanish,
  Russian,
}

class preferenceLanguage extends StatefulWidget {
  const preferenceLanguage({super.key});

  @override
  State<preferenceLanguage> createState() => _preferenceLanguageState();
}

class _preferenceLanguageState extends State<preferenceLanguage> {
  languagetype? _languagetype;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: gradientscreen(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SafeArea(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                              context
                                  .read<UserDataProvider>()
                                  .setLanguage(_languagetype!);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 32,
                              color: white[0],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Preferred Language",
                            style: TextStyle(
                                fontSize: 28,
                                color: white[0],
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          RadioListTile<languagetype>(
                              value: languagetype.English,
                              groupValue: _languagetype,
                              fillColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              contentPadding: const EdgeInsets.all(8),
                              title: Text(
                                languagetype.English.name,
                                style: TextStyle(
                                  color: white[0],
                                  fontSize: 28,
                                ),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  _languagetype = val;
                                });
                              }),
                          RadioListTile<languagetype>(
                              value: languagetype.French,
                              groupValue: _languagetype,
                              contentPadding: const EdgeInsets.all(8),
                              fillColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              title: Text(
                                languagetype.French.name,
                                style: TextStyle(
                                  color: white[0],
                                  fontSize: 28,
                                ),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  _languagetype = val;
                                });
                              }),
                          RadioListTile<languagetype>(
                              value: languagetype.German,
                              groupValue: _languagetype,
                              contentPadding: const EdgeInsets.all(8),
                              fillColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              title: Text(
                                languagetype.German.name,
                                style: TextStyle(
                                  color: white[0],
                                  fontSize: 28,
                                ),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  _languagetype = val;
                                });
                              }),
                          RadioListTile<languagetype>(
                              value: languagetype.Hindi,
                              groupValue: _languagetype,
                              contentPadding: const EdgeInsets.all(8),
                              fillColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              title: Text(
                                languagetype.Hindi.name,
                                style: TextStyle(
                                  color: white[0],
                                  fontSize: 28,
                                ),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  _languagetype = val;
                                });
                              }),
                          RadioListTile<languagetype>(
                              value: languagetype.Russian,
                              contentPadding: const EdgeInsets.all(8),
                              groupValue: _languagetype,
                              fillColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              title: Text(
                                languagetype.Russian.name,
                                style: TextStyle(
                                  color: white[0],
                                  fontSize: 28,
                                ),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  _languagetype = val;
                                });
                              }),
                          RadioListTile<languagetype>(
                              value: languagetype.Spanish,
                              groupValue: _languagetype,
                              contentPadding: const EdgeInsets.all(8),
                              fillColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              title: Text(
                                languagetype.Spanish.name,
                                style: TextStyle(
                                  color: white[0],
                                  fontSize: 28,
                                ),
                              ),
                              onChanged: (val) {
                                setState(() {
                                  _languagetype = val;
                                });
                              }),
                          const Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 32,
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 32,
                                ),
                              ),
                            ),
                          ),
                        ]))))));
  }
}
