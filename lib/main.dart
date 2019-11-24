import 'package:flutter/material.dart';
import 'package:saberu/ui/main_screen.dart';
import 'package:saberu/utils/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products',
      theme: AppTheme.theme,
      home: MainScreen(),
    );
  }
}
