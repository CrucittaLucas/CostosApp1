import 'package:costos_app/src/pages/Platos/burger.dart';
import 'package:costos_app/src/pages/Platos/pechuga_page.dart';
import 'package:costos_app/src/pages/Platos/salmon.dart';
import 'package:costos_app/src/pages/crear_plato.dart';
import 'package:costos_app/src/pages/home_page.dart';
import 'package:costos_app/src/pages/login_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CostosApp',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage(),
        'cordero': (BuildContext context) => PechugaPage(),
        'burger': (BuildContext context) => BurgerPage(),
        'salmon': (BuildContext context) => SalmonPage(),
        'crearPlato': (BuildContext context) => CrearPlatoPage(),
      },
    );
  }
}
