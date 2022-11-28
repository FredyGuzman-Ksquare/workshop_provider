import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';
import 'package:provider_class/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeModeProvider(),
        )
      ],
      child: MaterialApp(title: 'Material App', home: HomeScreen()),
    );
  }
}
