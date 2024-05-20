import 'package:flutter/material.dart';
import 'package:credito_cobranza/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio de Sesión',
      initialRoute: 'login',
      routes: {
        'login':          (_) => LoginScreen(),
        'home':           (_) => HomeScreen(),
        'search_client' : (_) => SearchClientScreen(),
        'new_credit'    : (_) => FormNewCreditScreen(),
      },
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Colors.grey[300]
      ),
    );
  }
}




