import 'package:flutter/material.dart';
import 'package:flutter_dark_light_theme/provider/dark_mode_provider.dart';
import 'package:provider/provider.dart';

class DarkModeTheme extends StatefulWidget {
  const DarkModeTheme({super.key});

  @override
  State<DarkModeTheme> createState() => _DarkModeThemeState();
}

class _DarkModeThemeState extends State<DarkModeTheme> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DarkModeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('Dark & Light Mode')),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("light Mode"),
            value: ThemeMode.light,
            groupValue: provider.themeMode,
            onChanged: provider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("dark Mode"),
            value: ThemeMode.dark,
            groupValue: provider.themeMode,
            onChanged: provider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text("System Mode"),
            value: ThemeMode.system,
            groupValue: provider.themeMode,
            onChanged: provider.setTheme,
          ),
        ],
      ),
    );
  }
}
