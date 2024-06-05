import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

class PurchaseHistoryPage extends HookWidget {
  const PurchaseHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width * 0.23,
                    height: height * 0.07,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          prefixIcon: Icon(
                            Icons.arrow_drop_down,
                            size: 10.w,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          hintText: 'UPC',
                          hintStyle: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  SizedBox(
                    width: width * 0.23,
                    height: height * 0.07,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          suffixIcon: Icon(
                            Icons.cancel,
                            size: 10.w,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          hintText: 'Item Name',
                          hintStyle: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.27,
                    height: height * 0.07,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 6.sp,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          suffixIcon: Icon(
                            Icons.calendar_month,
                            size: 10.w,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                          hintText: 'Select Date',
                          hintStyle: TextStyle(
                              fontSize: 5.sp,
                              color: Colors.white.withOpacity(0.4),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Container(
                    alignment: Alignment.center,
                    width: width * 0.1,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Ionicons.filter,
                          size: 8.w,
                          color: Colors.white,
                        ),
                        Text(
                          "Filter",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 4.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: width * 0.12,
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        height: height * 0.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "0",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 8.w,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Purchase QTY",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 5.w,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 15.h),
                        alignment: Alignment.centerLeft,
                        width: width * 0.12,
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        height: height * 0.09,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$0.00",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 8.w,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Purchase AMT",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 5.w,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Total Record",
                          style: TextStyle(
                              fontSize: 6.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text(
                        ":  0",
                        style: TextStyle(
                            fontSize: 6.sp,
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              DataTable(
                columnSpacing: 20.w,
                dataTextStyle: TextStyle(
                    fontSize: 5.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                horizontalMargin: 1.w,
                headingRowHeight: 42.h,
                headingTextStyle: TextStyle(
                    fontSize: 4.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                headingRowColor: MaterialStatePropertyAll<Color>(
                    Theme.of(context).colorScheme.onPrimary),
                columns: const [
                  DataColumn(
                      label: Text(
                    'SKU',
                  )),
                  DataColumn(
                      label: Text(
                    'Item name',
                  )),
                  DataColumn(
                      label: Text(
                    'Pack',
                  )),
                  DataColumn(
                      label: Text(
                    'Old\n(Unit price)',
                  )),
                  DataColumn(
                      label: Text(
                    'new\n(Unit price)',
                  )),
                  DataColumn(
                      label: Text(
                    'Per.(%)',
                  )),
                  DataColumn(
                      label: Text(
                    'User/role',
                  )),
                  DataColumn(
                      label: Text(
                    'Location/Module',
                  )),
                  DataColumn(
                      label: Text(
                    'Date/Time',
                  )),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Tofik vhora')),
                    DataCell(Text('10:30')),
                    DataCell(Text('Single')),
                    DataCell(Text('\$15000')),
                    DataCell(Text('\$10')),
                    DataCell(Text('10')),
                    DataCell(Text('Standerd')),
                    DataCell(Text('Standerd')),
                  ]),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
