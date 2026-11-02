import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const carbonBlack = Color(0xFFFFFFFF);
    const white = Color(0xFFFFFFFF);

    return MaterialApp(
      title: 'Console Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: carbonBlack,
        colorScheme: const ColorScheme.dark(
          primary: white,
          surface: Color(0xFFFFFFFF),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: carbonBlack,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF27272A)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF27272A)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: white, width: 1.5),
          ),
          labelStyle: const TextStyle(color: Color(0xFFA1A1AA)),
          hintStyle: const TextStyle(color: Color(0xFF52525B)),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: WidgetStateProperty.resolveWith((states) {
            return states.contains(WidgetState.selected) ? white : null;
          }),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}