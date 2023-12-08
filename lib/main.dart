import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/provider.dart';
import 'package:state_management/stream/Page2.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderApp()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page2(),
    );
  }
}
