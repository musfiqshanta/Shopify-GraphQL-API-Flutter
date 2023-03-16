import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:topautoupgrades/screens/homepage.dart';
import 'api/graphql_confiq.dart';
import 'model/products_model.dart';
import 'screens/account.dart';
import 'screens/cart.dart';
import 'screens/shop.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  // Load the access token as per instructions above

  await initHiveForFlutter();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Top Auto Upgrades',
      theme: ThemeData(
        primaryColor: Color(0xfff68220),
        fontFamily: GoogleFonts.raleway().fontFamily,
      ),
      home: const MainPage(title: 'Top Auto Upgrades'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;
  Widget _child = Homepage();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final repos = GraphQLConfig();

  @override
  Widget build(BuildContext context) {
    void _handleNavigationChange(int index) {
      print(index);
      setState(() {
        switch (index) {
          case 4:
            _child = Account();
            break;
          case 3:
            _child = Account();
            break;
          case 2:
            _child = Homepage();
            break;
          case 1:
            _child = Cart();
            break;
          case 0:
            _child = Shop();
            break;
        }
        _child = AnimatedSwitcher(
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeIn,
          duration: Duration(milliseconds: 500),
          child: _child,
        );
      });
    }

    return Scaffold(
      bottomNavigationBar: FluidNavBar(
        defaultIndex: 2,
        style: FluidNavBarStyle(
          iconSelectedForegroundColor: Colors.white,
          iconUnselectedForegroundColor: Colors.white,
          barBackgroundColor: Theme.of(context).primaryColor,
        ),
        icons: [
          FluidNavBarIcon(icon: Icons.list, extras: {"label": "partner"}),
          FluidNavBarIcon(
              icon: Icons.shopping_cart, extras: {"label": "partner"}),
          FluidNavBarIcon(icon: Icons.home, extras: {"label": "bookmark"}),
          FluidNavBarIcon(icon: Icons.favorite, extras: {"label": "partner"}),
          FluidNavBarIcon(icon: Icons.person_pin, extras: {"label": "partner"}),
        ],
        onChange: _handleNavigationChange,
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _child,
    );
  }
}
