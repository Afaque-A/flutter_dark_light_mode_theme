import 'package:flutter/material.dart';
import 'package:flutter_dark_light_theme/provider/dark_mode_provider.dart';
import 'package:flutter_dark_light_theme/screen/dark_mode_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => DarkModeProvider(),
        child: Builder(builder: (BuildContext context) {
          final provider = Provider.of<DarkModeProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: provider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.blue,
                primaryColor: Colors.amber),
            home: const DarkModeTheme(),
          );
        }));
  }
}
