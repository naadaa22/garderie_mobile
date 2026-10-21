import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaGarderieApp());
}

class MaGarderieApp extends StatelessWidget {
  const MaGarderieApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma Garderie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: Colors.orange.shade50,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}