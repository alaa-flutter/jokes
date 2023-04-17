import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/theme_provider.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => MaterialApp(
          title: 'Your App',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode:
          themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const HomePage(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }

}