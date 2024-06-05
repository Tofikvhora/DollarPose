import 'package:dollarpos/view/ActionPage.dart';
import 'package:dollarpos/view/AddPage.dart';
import 'package:dollarpos/view/EmpolyPage.dart';
import 'package:dollarpos/view/EndShiftPage.dart';
import 'package:dollarpos/view/HistoryPage/HistoryPage.dart';
import 'package:dollarpos/view/ItemPage.dart';
import 'package:dollarpos/view/LoginPage.dart';
import 'package:dollarpos/view/ManuPage.dart';
import 'package:dollarpos/view/MoneyPage.dart';
import 'package:dollarpos/view/PriceChangePage.dart';
import 'package:flutter/material.dart';

import '../view/ReprintPage.dart';

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
        return MaterialPageRoute(builder: (_) => const ItemPage());
      case ActionPage.route:
        return MaterialPageRoute(builder: (_) => const ActionPage());
      case PriceChange.route:
        return MaterialPageRoute(builder: (_) => const PriceChange());
      case ReprintPage.route:
        return MaterialPageRoute(builder: (_) => const ReprintPage());
      case AddPage.route:
        return MaterialPageRoute(builder: (_) => const AddPage());
      case EndShiftPage.route:
        return MaterialPageRoute(builder: (_) => const EndShiftPage());
      case HistoryPage.route:
        return MaterialPageRoute(builder: (_) => const HistoryPage());
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
