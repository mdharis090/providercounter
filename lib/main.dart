import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercount/provider/mult_provider.dart';
import 'package:providercount/provider/provider.dart';
import 'package:providercount/screen/count.dart';
import 'package:providercount/screen/slider.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => Counter(),
          ),
          ChangeNotifierProvider(create: (_) => hello()),
        ],
        child: MaterialApp(
          home: TScreen(),
        ));
  }
}
