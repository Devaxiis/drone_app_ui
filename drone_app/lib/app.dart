
import 'package:flutter/material.dart';

import 'presentation/screens/home_screen_description/description_screen.dart';
import 'presentation/screens/home_screen/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home_page",
      debugShowCheckedModeBanner: false,
      routes: {
        '/home_page': (context) => const HomePage(),
        '/description_page': (context) => const DescriptionPage(),
      },
    );
  }
}
