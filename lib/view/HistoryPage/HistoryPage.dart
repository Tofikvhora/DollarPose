import 'package:dollarpos/view/HistoryPage/Subpages/GraphPage.dart';
import 'package:dollarpos/view/HistoryPage/Subpages/PriceCostPage.dart';
import 'package:dollarpos/view/HistoryPage/Subpages/PurchaseHistoryPage.dart';
import 'package:dollarpos/view/HistoryPage/Subpages/TransactionHistoryPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryPage extends HookWidget {
  static const String route = 'HistoryPage';
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            width: width * 0.05,
            height: height * 0.09,
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            child: Icon(
              Icons.arrow_back_ios,
              size: 10.w,
              color: Colors.white,
            ),
          ),
          actions: [
            TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              dividerColor: Colors.transparent,
              labelStyle: TextStyle(
                  fontSize: 5.sp,
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              unselectedLabelStyle: TextStyle(
                  fontSize: 5.sp, color: Colors.white.withOpacity(0.2)),
              indicatorPadding: EdgeInsets.only(top: 8.h),
              tabs: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.chartBar,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const Text(
                      "QTY Graph",
                    )
                  ],
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.usd,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const Text(
                      "Price/Cost",
                    )
                  ],
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.history,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const Text(
                      "Purchase History",
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.history_edu,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const Text(
                      "Transaction History",
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        body: const TabBarView(children: [
          GraphPage(),
          PriceCostPage(),
          PurchaseHistoryPage(),
          TransactionHistoryPage(),
        ]),
      ),
    );
  }
}

Widget commonButtons(BuildContext context, String title) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Container(
    margin: EdgeInsets.only(right: 4.w, top: 10.h),
    alignment: Alignment.center,
    width: width * 0.1,
    height: height * 0.08,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white)),
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 4.sp, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
