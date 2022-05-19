import 'package:cep_project/shared/theme/theme_data.dart';
import 'package:cep_project/view/home_page.dart';
import 'package:flutter/material.dart';

class SearchCepApp extends StatelessWidget {
  const SearchCepApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mobility App',
        theme: AppThemeData.materialTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {'/': (context) => const HomePage(title: 'Home')});
  }
}
