import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workly/route/routes.dart';
import 'package:workly/src/theme/theme.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Workly',
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      routerConfig: routerConfig,
    );
  }
}
