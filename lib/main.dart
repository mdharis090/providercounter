import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercount/provider/fav_provider.dart';
import 'package:providercount/provider/mult_provider.dart';
import 'package:providercount/provider/provider.dart';
import 'package:providercount/screen/favorit.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => hello()),
      ChangeNotifierProvider(create: (_) => FavProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
