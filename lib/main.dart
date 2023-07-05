import 'package:flutter/material.dart';

import 'modules/bmi/bmi_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff1B1E2F),
          appBarTheme: const AppBarTheme(elevation: 0),
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: const Color(0xff1B1E2F),
              )),
      home: const BmiScreen(),
    );
  }
}
