import 'package:flutter/material.dart';
import 'package:myapp/widgets/PaginaDos.dart';
import 'package:myapp/widgets/PaginaTres.dart';
import 'package:myapp/widgets/PaginaUno.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lala App',
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaUno(),
        '/productos': (context) => const PaginaDos(),
        '/detalle': (context) => const PaginaTres(),
      },
    );
  }
}