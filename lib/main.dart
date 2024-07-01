import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_home_challenge/models/dashboard/provider/dashboard_provider.dart';
import 'package:take_home_challenge/models/dashboard/view/dashboard_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DashboardProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Task List'),
        ),
        body: const DashboardScreen(),
      ),
    );
  }
}
