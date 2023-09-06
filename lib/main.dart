import 'package:flutter/material.dart';
import 'package:login_register2/widgets/pageview_thing.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(197, 1, 0, 0),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 77, 75, 75),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const PageViewThing();
  }
}
