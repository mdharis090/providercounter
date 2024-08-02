import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercount/provider/provider.dart';
import 'package:providercount/screen/count.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => Counter(),
        child: MaterialApp(
          home: MainScreen(),
        ));
  }
}
