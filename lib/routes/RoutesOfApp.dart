import 'package:dollarpos/view/EmpolyPage.dart';
import 'package:dollarpos/view/ItemPage.dart';
import 'package:dollarpos/view/LoginPage.dart';
import 'package:dollarpos/view/ManuPage.dart';
import 'package:dollarpos/view/MoneyPage.dart';
import 'package:flutter/material.dart';

class RoutesOfApp {
  static MaterialPageRoute genRoutes(setting) {
    switch (setting.name) {
      case LoginPage.route:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case ManuPage.route:
        return MaterialPageRoute(builder: (_) => const ManuPage());
      case MoneyPage.route:
        return MaterialPageRoute(builder: (_) => const MoneyPage());
      case EmployPage.route:
        return MaterialPageRoute(builder: (_) => const EmployPage());
      case ItemPage.route:
        return MaterialPageRoute(builder: (_) => ItemPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                appBar: AppBar(
                    title: const Text(
                      "Error",
                    ),
                    centerTitle: true)));
    }
  }
}
