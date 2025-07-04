import 'package:ciber_school_a/config/app_theme.dart';
import 'package:ciber_school_a/src/pages/home_page.dart';
import 'package:ciber_school_a/src/pages/providers/detail_provider.dart';
import 'package:ciber_school_a/src/pages/providers/detail_provider_Young.dart';
import 'package:ciber_school_a/src/pages/providers/detail_provider_adult.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) => DetailProviderYoung()..loadNextPageYoung()),
        ChangeNotifierProvider(
            lazy: false, create: (_) => DetailProvider()..loadNextPage()),
        ChangeNotifierProvider(
            lazy: false,
            create: (_) => DetailProviderAdult()..loadNextPageAdult()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "main",
        theme: AppTheme().getTheme(),
        home: Home(),
      ),
    );
  }
}
